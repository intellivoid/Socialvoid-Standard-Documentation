# CDN Server

Socialvoid does not use the RPC server to handle the process of handling
and uploading files to the network due to a performance and structure 
limitation that can come with the RPC server such as

 - Sending or Downloading content to the RPC server can hold up 
   resources and be a potential for a DoS attack.
 - Sending arbitrary data in the form of a JSON payload can cause
   corruption issues and large memory usage for both the client and
   server.

Instead a separate server is dedicated to serve two functions, to upload
content to the network and download content from the network. Limitations
are configured by the network and can be obtained from the network.

## HTTP API

The CDN operates using a simple HTTP RESTful API, it accepts both `POST`
and `GET` request methods to obtain data. but only uploading  content will
be accepted with a `POST` request method.

Any action requested to the server must be done with authentication, this
authentication is proven to the server by sharing a
[SessionIdentification](../Objects/SessionIdentification.md) object
as parameters whenever making a request to the CDN server. more about
this will be explained in this document.

The CDN Server only serves two functions, which is `upload` & `download`.
Uploading content is done by posting the file using a multipart/form-data
as the usual way that files are uploaded via the web browser. Downloading
content is done by simply sending the `document` parameter with the value
being the Document ID.

Error responses will result in the HTTP Response Code not being `200` and
the content results being a `application/json` response containing
information about the error. only when `uploading` content will the server
always respond with a `application/json` response containing information
about the newly created document even if the HTTP Response Code is `200`.

--------------------------------------------------------------------------

## Authentication

Authentication is done simply by passing on the following parameters in
a `GET` or `POST` body. For example a `GET` request may look like
`https://cdn.socialvoid.cc/?session_id=foo&client_public_hash=foo&challenge_answer=foo`, this is always required for both downloading and
uploading content.

| Property Name      | Type(s)  | Specification                                                                       | Deprecated | Versions | Description                                                                                                             |
|--------------------|----------|-------------------------------------------------------------------------------------|------------|----------|-------------------------------------------------------------------------------------------------------------------------|
| session_id         | `string` | [SessionIdSpecification](../Specifications/SessionIdSpecification.md)               | No         | 1.0      | The ID of the session obtained when establishing a session                                                              |
| client_public_hash | `string` | [ClientHashSpecification](../Specifications/ClientHashSpecification.md)             | No         | 1.0      | The Public Hash of the client used when establishing the session                                                        |
| challenge_answer   | `string` | [SessionChallengeSpecification](../Specifications/SessionChallengeSpecification.md) | No         | 1.0      | The session challenge answer revolving around the client's private hash,  the same client used to establish the session |

--------------------------------------------------------------------------

## Responses

A successful response will always have a HTTP Response Code of `200`, but
depending on the action the response will not be a `application/json`
response, for example when downloading a file from the server the response
will be the file itself, if for any reason the request has failed then
a HTTP Response Code will not be `200` and the response will be a type
`application/json` which contains a JSON document that explains
the error as shown below in the "Error Responses" section.

However, when uploading content the response will always be a type
`application/json`, if the HTTP Response code is not `200` or the `success`
property of the response is `false` then it's safe to assume the request
failed. However if the HTTP Response code is `200` and the `success`
property of the response is `true`, then it's safe to assume that the
request was successful.

## Error Responses

An error response is simple a `application/json` that looks like this

```json
{
    "success":false,
    "error_code":0,
    "message":"This is a example error"
}
```

In cases where the `error_code` is not applicable, it will simply be `0`. 
If a standard error is to be returned by the server, then you will
find more information about the error codes by looking at
[Errors](../Errors/README.md), a standard error code will be shown as so

```json
{
    "success":false,
    "error_code":8711,
    "message":"The challenge answer is incorrect"
}
```

Standard errors are returned the same way as an RPC server would return
errors but with a different structure. The `success` property indicates
if the request as successful or not, if the `success` property is false
then expect `error_code` & `message` to be present in the response.

## Successful response

An successful response is a simple `application/json` that looks like this

```json
{
    "success":true,
    "results":
    {
        "id":"f6f18cf4cd38d3675b58060978c6e8b4ffc733f6eef2480ead3f02fd5267d505-bb0a233a",
        "file_mime":"audio/mpeg",
        "file_name":"file_example_MP3_5MG.mp3",
        "file_size":5289384,
        "file_type":"AUDIO",
        "flags":[],
        "created_timestamp":"1630373361"
    }
}
```

If the `success` property is set to true then expect `results` to be
present with the object being returned from the server, in this case
the CDN server will only return [Document](../Objects/Document.md) object
upon success when uploading a file to the server.

--------------------------------------------------------------------------

## Uploading content

Uploading content is done by making a `POST` request with the `action`
parameter being set to `upload`, followed by the parameters for
[SessionIdentification](../Objects/SessionIdentification.md) object.
only one file can be uploaded per request to the CDN server under the
parameter `document`, below is a an example written in Python for
uploading a local file from disk to the server.

If you aren't authenticated then a error response will be returned.

```python
import requests

file_path = "example_song.mp3"

requests.post(
    "https://cdn.socialvoid.cc/",
    files={"document": open(file_path, "rb")},
    data={
        "action": "upload",
        "session_id": "<SESSION ID>",
        "client_public_hash": "<CLIENT PUBLIC HASH>",
        "challenge_answer": "<SESSION CHALLENGE ANSWER>"
    }
)
```

Executing a successful request will return a `application/json` response
that contains the Document object in the `results` property.

```json
{
    "success":true,
    "results":
    {
        "id":"f6f18cf4cd38d3675b58060978c6e8b4ffc733f6eef2480ead3f02fd5267d505-bb0a233a",
        "file_mime":"audio/mpeg",
        "file_name":"example_song.mp3",
        "file_size":5289384,
        "file_type":"AUDIO",
        "flags":[],
        "created_timestamp":"1630373361"
    }
}
```

## Downloading content

Downloading content can be done with a `POST` or `GET` request with the
`action` parameter being set to `download`, followed by the parameters for
[SessionIdentification](../Objects/SessionIdentification.md) object.

The parameter `document` must be the Document ID, and must be set. 
if you aren't authenticated or if you don't have permission to 
access this document, then a error response will be returned.

If the response code is `200` then the response contents will be the file
itself, otherwise a error response will be returned in a `application/json`
representation. Below is an example post request to download a file from
the CDN written in Python

```python
import requests

requests.post(
    "https://cdn.socialvoid.cc/",
    data={
        "action": "download",
        "document": "f6f18cf4cd38d3675b58060978c6e8b4ffc733f6eef2480ead3f02fd5267d505-bb0a233a",
        "session_id": "<SESSION ID>",
        "client_public_hash": "<CLIENT PUBLIC HASH>",
        "challenge_answer": "<SESSION CHALLENGE ANSWER>"
    }
)
```
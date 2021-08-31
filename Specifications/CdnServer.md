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
about the newly created document.
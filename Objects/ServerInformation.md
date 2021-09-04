# ServerInformation

The ServerInformation object is a simple object that gives details about
the server's attributes and limits or location of other servers that
the client should communicate to for other purposes such as a CDN.

## Structure

| Property Name            | Type(s)  | Specification  | Deprecated | Versions | Description                                                                                                                                            |
|--------------------------|----------|----------------|------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| network_name             | `string` | Not Applicable | No         | 1.0      | The name of the network, eg; "Socialvoid"                                                                                                              |
| protocol_version         | `string` | Not Applicable | No         | 1.0      | The version of the protocol standard that the server is using, eg; "1.0"                                                                               |
| cdn_server               | `string` | Not Applicable | No         | 1.0      | The HTTP URL Endpoint for the CDN server of the network                                                                                                |
| upload_max_file_size     | `int`    | Not Applicable | No         | 1.0      | The maximum size of a file that you can upload to the CDN Server (in bytes)                                                                            |
| unauthorized_session_ttl | `int`    | Not Applicable | No         | 1.0      | The maximum time-to-live (in seconds) that an unauthorized session may have.  The server will often reset the expiration whenever the session is used. |
| authorized_session_ttl   | `int`    | Not Applicable | No         | 1.0      | The maximum time-to-live (in seconds) that an authorized session may have. The server will often reset the expiration whenever the session is used.    |
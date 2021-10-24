# ServerInformation

The ServerInformation object is a simple object that gives details about
the server's attributes and limits or location of other servers that
the client should communicate to for other purposes such as a CDN.

## Structure

| Property Name                | Type(s)  | Specification  | Deprecated | Versions | Description                                                                                                                                            |
|------------------------------|----------|----------------|------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| network_name                 | `string` | Not Applicable | No         | 1.0      | The name of the network, eg; "Socialvoid"                                                                                                              |
| protocol_version             | `string` | Not Applicable | No         | 1.0      | The version of the protocol standard that the server is using, eg; "1.0"                                                                               |
| cdn_server                   | `string` | Not Applicable | No         | 1.0      | The HTTP URL Endpoint for the CDN server of the network                                                                                                |
| upload_max_file_size         | `int`    | Not Applicable | No         | 1.0      | The maximum size of a file that you can upload to the CDN Server (in bytes)                                                                            |
| unauthorized_session_ttl     | `int`    | Not Applicable | No         | 1.0      | The maximum time-to-live (in seconds) that an unauthorized session may have.  The server will often reset the expiration whenever the session is used. |
| authorized_session_ttl       | `int`    | Not Applicable | No         | 1.0      | The maximum time-to-live (in seconds) that an authorized session may have. The server will often reset the expiration whenever the session is used.    |
| retrieve_likes_max_limit     | `int`    | Not Applicable | No         | 1.0      | The maximum amount of likes a client can retrieve at once using the method  `timeline.get_likes` via the `page` parameter                             |
| retrieve_reposts_max_limit   | `int`    | Not Applicable | No         | 1.0      | The maximum amount of reposts a client can retrieve at once using the method `timeline.get_reposted_peers` via the `page` parameter                   |
| retrieve_replies_max_limit   | `int`    | Not Applicable | No         | 1.0      | The maximum amount of replies a client can retrieve at once using the method  `timeline.get_replies` via the `page` parameter                         |
| retrieve_quotes_max_limit    | `int`    | Not Applicable | No         | 1.0      | The maximum amount of quotes a client can retrieve at once using the method `timeline.get_quotes` via the `page` parameter                            |
| retrieve_followers_max_limit | `int`    | Not Applicable | No         | 1.0      | The maximum amount of followers a client can retrieve at once using the method `network.get_followers` via the `page` parameter                       |
| retrieve_following_max_limit | `int`    | Not Applicable | No         | 1.0      | The maximum amount of following peers a client can retrieve at once using the method `network.get_following` via the `page` parameter                 |
| retrieve_feed_max_limit | `int`    | Not Applicable | No         | 1.0      | add description                 |

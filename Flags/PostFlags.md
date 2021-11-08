# Post Flags

Post flags helps determine the current state of the post
to indicate to the client what methods may or may not be
acciessiable towards the specified post. Additionally helps
clients display information to the user with minimal effort.

| Flag              | Description                                                                        |
|-------------------|------------------------------------------------------------------------------------|
| `DELETED`         | This indicates if the post was deleted                                             |
| `LIKED`           | Indicates if the post is currently liked by the authenticated peer                 |
| `REPOSTED`        | Indicates if the post has been reposted by the authenticated peer                  |
| `ADVERTISEMENT`   | Indicates if this post is an advertisement                                         |
| `SPONSORED`       | Indicates if this post is sponsored                                                |
| `DMCA_VIOLATION`  | Indicates if the post was infringing on copyright and was claimed by a DMCA report |
| `TERMS_VIOLATION` | Indicates if the post was infringing on the server's terms of service or rules     |
| `NSFW`            | Indicates that the post contains content that is considered not safe for work      |
| `NSFL`            | Indicates that the post contains content is considered not safe for life           |
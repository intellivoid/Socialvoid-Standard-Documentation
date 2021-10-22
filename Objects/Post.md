# Post

A post object is used to represent a post submitted either by a
peer, this object can contain recursive objects.

## Recursive objects

A post object can represent other posts, for example a repost 
may contain a object of the original post and any action made
towards a repost will automatically invoke the original post
rather than the repost object, but if the original post contains
a quote or any other posts then this will not be represented in
the parent object until you request for the post from the server.

Your client is expected to recursively resolve all sub-posts and
objects when needed.

## Deleted post

A deleted post can still be shown when needed but with it's
contents removed and only a bare minimal representation of the
deleted post will be returned from the server.

## Structure

| Property Name        | Type(s)                              | Specification  | Deprecated | Versions | Description                                                                                                                                                                                                                                        |
|----------------------|--------------------------------------|----------------|------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id                   | `string`                             | Not Applicable | No         | 1.0      | The unique ID for the post                                                                                                                                                                                                                         |
| type                 | [`PostTypes`](../Types/PostTypes.md) | Not Applicable | No         | 1.0      | The post type used to represent the true intention of the post                                                                                                                                                                                     |
| peer                 | [`Peer`](Peer.md), `null`            | Not Applicable | No         | 1.0      | The author peer of the post, this property can be null if the post was deleted.                                                                                                                                                                    |
| source               | `string`, `null`                     | Not Applicable | No         | 1.0      | The source for where this post was composed from or collected from (eg; the client the user is using or the third-party source that  the post was collected. This is determined by the server). This property can be null if the post was deleted. |
| text                 | `string`, `null`                     | Not Applicable | No         | 1.0      | The text content of the post source. This property can be null if the post has been deleted                                                                                                                                                        |
| attachments          | [`Document[]`](Document.md)          | Not Applicable | No         | 1.0      | An array of attached documents to the post                                                                                                                                                                                                         |
| entities             | [`TextEntitiy[]`](TextEntity.md)     | Not Applicable | No         | 1.0      | An array of entities extracted from the text, can be used by the client to highlight clickable entities that preforms an action.                                                                                                                   |
| mentioned_peers      | [`Peer[]`](Peer.md)                  | Not Applicable | No         | 1.0      | An array of resolved peers that was mentioned in the post text.                                                                                                                                                                                    |
| reply_to_post        | [`Post`](Post.md), `null`            | Not Applicable | No         | 1.0      | The original post that this post is replying to if applicable, otherwise null.                                                                                                                                                                     |
| quoted_post          | [`Post`](Post.md), `null`            | Not Applicable | No         | 1.0      | The original post that this post is quoting if applicable, otherwise null                                                                                                                                                                          |
| reposted_post        | [`Post`](Post.md), `null`            | Not Applicable | No         | 1.0      | The original post that this post is reposting if applicable, otherwise null                                                                                                                                                                        |
| original_thread_post | `Post`(Post.md), `null`              | Not Applicable | No         | 1.0      | The original thread post, only applicable to replies. This value indicates the main thread post where all the replies originated from. This value will remain the same for all sub-replies of the main post.                                       |
| like_count           | `integer`, `null`                    | Not Applicable | No         | 1.0      | The amount of likes that this post has if applicable, otherwise null                                                                                                                                                                               |
| repost_count         | `integer`, `null`                    | Not Applicable | No         | 1.0      | The amount of repost that this post has if applicable, otherwise null                                                                                                                                                                              |
| quote_count          | `integer`, `null`                    | Not Applicable | No         | 1.0      | The amount of quoted posts that this post has if applicable, otherwise null                                                                                                                                                                        |
| reply_count          | `integer`, `null`                    | Not Applicable | No         | 1.0      | The amount of replies that this post has if applicable, otherwise null                                                                                                                                                                             |
| posted_timestamp     | `integer`                            | Not Applicable | No         | 1.0      | The Unix Timestamp for when this post was created                                                                                                                                                                                                  |
| flags                | `string[]`                           | Not Applicable | No         | 1.0      | The flags associated with this post (WIP)                                                                                                                                                                                                          |

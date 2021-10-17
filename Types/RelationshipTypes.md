# Relationship Types

This type indicates the type of peer relationship you have with
another peer, be mind that this value may not be the same for
the reciving peer towards you (Just like in real life).

For example, when blocking a peer your relationship will become
`BLOCKED` with that target peer. But when the target peer checks
it's relationship with you then it would get `BLOCKED_YOU`.

| Type               | Description                                                                                                            |
|--------------------|------------------------------------------------------------------------------------------------------------------------|
| NONE               | There is no relationship between the two peers                                                                         |
| FOLLOWING          | The peer is currently following the target peer                                                                        |
| FOLLOWS_YOU        | The peer is followed by the target user                                                                                |
| AWAITING_APPROVAL  | The peer is awaiting an approval to follow the target peer or the target peer is waiting for an approval to follow you |
| MUTUALLY_FOLLOWING | Both peers are following each other                                                                                    |
| BLOCKED            | The peer has blocked the target peer                                                                                   |
| BLOCKED_YOU        | The target peer blocked the peer                                                                                       |
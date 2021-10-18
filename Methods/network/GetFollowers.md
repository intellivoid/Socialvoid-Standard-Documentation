# GetFollowers

Returns an array of peers who follow the given peer, if the peer parameter is empty
then it will return an array of peers that follows the authenticated peer.

## Description

| Property                | Value                             |
|-------------------------|-----------------------------------|
| Method Name             | GetFollowers                      |
| Method                  | `network.get_followers`           |
| Response Type(s)        | [`Peer[]`](../../Objects/Peer.md) |
| Version                 | 1.0.0.0                           |
| Authentication Required | Yes                               |
| Peer Type Accessibility | `USER`                            |

## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                           | Required | Specification  | Deprecated | Versions | Description                                                                                                                                                                                                                                                                                      |
|------------------------|-------------------------------------------------------------------|----------|----------------|------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| session_identification | [`SessionIdentification`](../../Objects/SessionIdentification.md) | Yes      | Not Applicable | No         | 1.0      | The Session Identification object                                                                                                                                                                                                                                                                |
| peer                   | string                                                            | No       | Not Applicable | No         | 1.0      | The peer ID or Username (With leading @) if left empty, the selected peer will be the authenticated user (yourself)                                                                                                                                                                              |
| cursor                 | int                                                               | No       | Not Applicable | No         | 1.0      | The current cursor (Page number) of the return results. The default value will be 1 if no value is provided. See the results of `retrieve_followers_max_limit` value in [ServerInformation](../../Objects/ServerInformation.md) to determine the size of the results that the server may return. |

## Possible Errors

A list of possible errors that this method may return, some errors
may not be listed here, your client should always expect errors from
any method.

| Error Name                   | Error Type                                                   |
|------------------------------|--------------------------------------------------------------|
| InternalServerError          | [ServerErrors](../../Errors/ServerErrors.md)                 |
| MissingParameter             | * RPC Protocol                                               |
| InvalidSessionIdentification | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| BadSessionChallengeAnswer    | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| SessionExpired               | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| SessionNotFound              | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| InvalidClientPublicHash      | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| NotAuthenticated             | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| PeerNotFound                 | [NetworkErrors](../../Errors/NetworkErrors.md)               |
| InvalidPeerInput             | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| InvalidCursorValue           | [ValidationErrors](../../Errors/ValidationErrors.md)         |

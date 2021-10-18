# GetProfile

Returns a profile display of the requested peer, if the peer paramter is empty
then the returned profile will be the authenticated user.

## Description

| Property                | Value                                 |
|-------------------------|---------------------------------------|
| Method Name             | GetProfile                            |
| Method                  | `network.get_profile`                 |
| Response Type(s)        | [`Profile`](../../Objects/Profile.md) |
| Version                 | 1.0.0.0                               |
| Authentication Required | Yes                                   |
| Peer Type Accessibility | `USER`                                |

## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                           | Required | Specification  | Deprecated | Versions | Description                                                                                                         |
|------------------------|-------------------------------------------------------------------|----------|----------------|------------|----------|---------------------------------------------------------------------------------------------------------------------|
| session_identification | [`SessionIdentification`](../../Objects/SessionIdentification.md) | Yes      | Not Applicable | No         | 1.0      | The Session Identification object                                                                                   |
| peer                   | string                                                            | No       | Not Applicable | No         | 1.0      | The peer ID or Username (With leading @) if left empty, the selected peer will be the authenticated user (yourself) |

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
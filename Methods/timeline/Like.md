# Like

Likes an existing post on the timeline

## Description

| Property                | Value           |
|-------------------------|-----------------|
| Method Name             | Like            |
| Method                  | `timeline.like` |
| Response Type(s)        | `bool`          |
| Version                 | 1.0.0.0         |
| Authentication Required | Yes             |
| Peer Type Accessibility | `USER`          |

## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                           | Required | Specification  | Deprecated | Versions | Description                       |
|------------------------|-------------------------------------------------------------------|----------|----------------|------------|----------|-----------------------------------|
| session_identification | [`SessionIdentification`](../../Objects/SessionIdentification.md) | Yes      | Not Applicable | No         | 1.0      | The Session Identification object |
| post                   | string                                                            | Yes      | Not Applicable | No         | 1.0      | The Post ID to like               |

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
| PostNotFound                 | [NetworkErrors](../../Errors/NetworkErrors.md)               |
| PostDeleted                  | [NetworkErrors](../../Errors/NetworkErrors.md)               |
| AccessDenied                 | [NetworkErrors](../../Errors/NetworkErrors.md)               |
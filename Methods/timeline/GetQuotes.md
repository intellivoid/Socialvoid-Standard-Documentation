# GetQuotes

Returns an array of post quotes for the selected post

## Description

| Property                | Value                             |
|-------------------------|-----------------------------------|
| Method Name             | GetQuotes                         |
| Method                  | `timeline.get_quotes`             |
| Response Type(s)        | [`Post[]`](../../Objects/Post.md) |
| Version                 | 1.0.0.0                           |
| Authentication Required | Yes                               |
| Peer Type Accessibility | `USER`                            |

## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                           | Required | Specification  | Deprecated | Versions | Description                                                                                                                                                                                                                                                    |
|------------------------|-------------------------------------------------------------------|----------|----------------|------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| session_identification | [`SessionIdentification`](../../Objects/SessionIdentification.md) | Yes      | Not Applicable | No         | 1.0      | The Session Identification object                                                                                                                                                                                                                              |
| post                   | string                                                            | Yes      | Not Applicable | No         | 1.0      | The Post ID to retrieve quotes from                                                                                                                                                                                                                            |
| page                   | int                                                               | No       | Not Applicable | No         | 1.0      | The requested page number, by default the value is 1. the amount of entries returned per page depends on the server, see the value `retrieve_quotes_max_limit` from [ServerInformation](../../Objects/ServerInformation.md). This value cannot be less than 1. |

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
| InvalidPageValue             | [ValidationErrors](../../Errors/ValidationErrors.md)         |
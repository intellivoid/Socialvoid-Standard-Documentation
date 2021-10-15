# UpdateProfileName

Sets a new First and or Last name to the profile

## Description

| Property                | Value                         |
|-------------------------|-------------------------------|
| Method Name             | UpdateProfileName             |
| Method                  | `account.update_profile_name` |
| Response Type(s)        | `bool`                        |
| Version                 | 1.0.0.0                       |
| Authentication Required | Yes                           |
| Peer Type Accessibility | `USER`                        |

## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                           | Required | Specification  | Deprecated | Versions | Description                                    |
|------------------------|-------------------------------------------------------------------|----------|----------------|------------|----------|------------------------------------------------|
| session_identification | [`SessionIdentification`](../../Objects/SessionIdentification.md) | Yes      | Not Applicable | No         | 1.0      | The Session Identification object              |
| first_name             | string                                                            | Yes      | Not Applicable | No         | 1.0      | The first name to set to the profile           |
| last_name              | string                                                            | No       | Not Applicable | No         | 1.0      | The last name to set to the profile (Optional) |

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
| InvalidFirstName             | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| InvalidLastName              | [ValidationErrors](../../Errors/ValidationErrors.md)         |
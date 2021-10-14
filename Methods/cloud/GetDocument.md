# GetDocument

Returns information about the requested document on the server


## Description

A description of the method and it's properties

| Property              | Value                                   |
|-----------------------|-----------------------------------------|
| Method Name           | GetDocument                             |
| Method                | `cloud.get_document`                    |
| Response Type(s)      | [`Document`](../../Objects/Document.md) |
| Version               | 1.0.0.0                                 |
| Available in Versions | 1.0                                     |


## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                           | Required | Specification  | Deprecated | Versions | Description                                        |
|------------------------|-------------------------------------------------------------------|----------|----------------|------------|----------|----------------------------------------------------|
| session_identification | [`SessionIdentification`](../../Objects/SessionIdentification.md) | Yes      | Not Applicable | No         | 1.0      | The Session Identification object                  |
| document               | `string`                                                          | Yes      | Not Applicable | No         | 1.0      | The ID of the document to retrieve from the server |


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
| DocumentNotFound             | [NetworkErrors](../../Errors/NetworkErrors.md)               |
| AccessDenied                 | [NetworkErrors](../../Errors/NetworkErrors.md)               |

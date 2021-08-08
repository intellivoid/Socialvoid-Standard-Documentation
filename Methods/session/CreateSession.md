# CreateSession (session.create)

Establishes a new session to the network, new and unauthenticated sessions
expires after 10 minutes of inactivity, authenticating to the session
will increase the expiration time to 72 hours of inactivity. This timer
is reset whenever the session is used in one way or another.


## Description

A description of the method and it's properties
| Property              | Value                                                     |
|-----------------------|-----------------------------------------------------------|
| Method Name           | CreateSession                                             |
| Method                | `session.create`                                          |
| Response Type(s)      | [SessionEstablished](../../Objects/SessionEstablished.md) |
| Version               | 1.0.0.0                                                   |
| Available in Versions | 1.0                                                       |


## Parameters

A list of parameters that this method accepts

| Parameter Name | Type(s)  | Required | Specification                                                                    | Deprecated | Versions | Description                                                             |
|----------------|----------|----------|----------------------------------------------------------------------------------|------------|----------|-------------------------------------------------------------------------|
| public_hash    | `string` | Yes      | [ClientHashSpecification](../../Specifications/ClientHashSpecification.md)       | No         | 1.0      | The Public Hash of the client that's establishing the session           |
| private_hash   | `string` | Yes      | [ClientHashSpecification](../../Specifications/ClientHashSpecification.md)       | No         | 1.0      | The Private Hash of the client used when establishing the session       |
| platform       | `string` | Yes      | [PlatformSpecification](../../Specifications/PlatformSpecification.md)           | No         | 1.0      | The platform that the client is running on, eg; Linux, Windows, Android |
| name           | `string` | Yes      | [ClientNameSpecification](../../Specifications/ClientNameSpecification.md)       | No         | 1.0      | The name of the client                                                  |
| version        | `string` | Yes      | [ClientVersionSpecification](../../Specifications/ClientVersionSpecification.md) | No         | 1.0      | The version of the client                                               |

## Possible Errors

A list of possible errors that this method may return, some errors
may not be listed here, your client should always expect errors from
any method.

| Error Name               | Error Type                                           |
|--------------------------|------------------------------------------------------|
| InternalServerError      | [ServerErrors](../../Errors/ServerErrors.md)         |
| MissingParameter         | * RPC Protocol                                       |
| InvalidClientName        | [ValidationErrors](../../Errors/ValidationErrors.md) |
| InvalidClientPublicHash  | [ValidationErrors](../../Errors/ValidationErrors.md) |
| InvalidClientPrivateHash | [ValidationErrors](../../Errors/ValidationErrors.md) |
| InvalidPlatform          | [ValidationErrors](../../Errors/ValidationErrors.md) |
| InvalidVersion           | [ValidationErrors](../../Errors/ValidationErrors.md) |
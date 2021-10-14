# Register

Registers a new user to the network. This method is intended to be simple
(for now), this will be changed in the future to add additional security
like requiring the user to complete a captcha before proceeding.

The client must present the network's terms of service document
and ask if the user agrees to the terms of service.

## Description

A description of the method and it's properties

| Property              | Value                           |
|-----------------------|---------------------------------|
| Method Name           | Register                        |
| Method                | `session.register`              |
| Response Type(s)      | [`Peer`](../../Objects/Peer.md) |
| Version               | 1.0.0.0                         |
| Available in Versions | 1.0                             |


## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                           | Required | Specification  | Deprecated | Versions | Description                                                                                                               |
|------------------------|-------------------------------------------------------------------|----------|----------------|------------|----------|---------------------------------------------------------------------------------------------------------------------------|
| session_identification | [`SessionIdentification`](../../Objects/SessionIdentification.md) | Yes      | Not Applicable | No         | 1.0      | The Session Identification object                                                                                         |
| terms_of_service_id    | `string`                                                          | Yes      | Not Applicable | No         | 1.0      | The ID of the HelpDocument for the Terms of Service. See [`help.get_terms_of_service`](../help/GetTermsOfService.md)      |
| terms_of_service_agree | `bool`                                                            | Yes      | Not Applicable | No         | 1.0      | Indicates if the user has agreed to the terms of service, if this parameter is false then the method will throw an error. |
| username               | `string`                                                          | Yes      | Not Applicable | No         | 1.0      | The username to register to the network                                                                                   |
| password               | `string`                                                          | Yes      | Not Applicable | No         | 1.0      | The password used to authenticate to the network                                                                          |
| first_name             | `string`                                                          | Yes      | Not Applicable | No         | 1.0      | The first name of the user to set as a display name                                                                       |
| last_name              | `string`                                                          | No       | Not Applicable | No         | 1.0      | The last name of the user to set as a display name (*optional*)                                                           |


## Possible Errors

A list of possible errors that this method may return, some errors
may not be listed here, your client should always expect errors from
any method.

| Error Name                           | Error Type                                                   |
|--------------------------------------|--------------------------------------------------------------|
| InternalServerError                  | [ServerErrors](../../Errors/ServerErrors.md)                 |
| MissingParameter                     | * RPC Protocol                                               |
| AgreementRequired                    | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| AuthenticationFailure                | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| AlreadyAuthenticated                 | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| BadSessionChallengeAnswer            | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| IncorrectTwoFactorAuthenticationCode | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| InvalidClientPublicHash              | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| InvalidSessionIdentification         | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| SessionExpiredException              | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| InvalidHelpDocumentId                | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| InvalidLastName                      | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| InvalidPassword                      | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| InvalidUsername                      | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| UsernameAlreadyExists                | [ValidationErrors](../../Errors/ValidationErrors.md)         |
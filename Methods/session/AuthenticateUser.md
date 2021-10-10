# AuthenticateUser (session.authenticate_user)

Authenticates a user via a Username & Password combination.
Optionally two-factor authentication if the account has
enabled it. Once authenticated, the session will be able
to access methods that requires authentication and perform
operations as the authenticated user.

Sessions will also have a much longer expiration date when
authenticated compared to unauthenticated session, to presist
long-term sessions.


## Description

A description of the method and it's properties

| Property              | Value                       |
|-----------------------|-----------------------------|
| Method Name           | AuthenticateUser            |
| Method                | `session.authenticate_user` |
| Response Type(s)      | `bool`                      |
| Version               | 1.0.0.0                     |
| Available in Versions | 1.0                         |


## Parameters

A list of parameters that this method accepts

| Parameter Name         | Type(s)                                                         | Required | Specification                                                          | Deprecated | Versions | Description                                                                            |
|------------------------|-----------------------------------------------------------------|----------|------------------------------------------------------------------------|------------|----------|----------------------------------------------------------------------------------------|
| session_identification | [SessionIdentification](../../Objects/SessionIdentification.md) | Yes      | Not Applicable                                                         | No         | 1.0      | The Session Identification object                                                      |
| username               | `string`                                                        | Yes      | [UsernameSpecification](../../Specifications/UsernameSpecification.md) | No         | 1.0      | The username of the user to authenticate to                                            |
| password               | `string`                                                        | Yes      | [PasswordSpecification](../../Specifications/PasswordSpecification.md)  | No         | 1.0      | The password used to authenticate to this account                                      |
| otp                    | `string`                                                        | No       | Not Applicable                                                         | No         | 1.0      | The optional one-time password; will be ignored if empty or larger than 64 characters. |


## Possible Errors

A list of possible errors that this method may return, some errors
may not be listed here, your client should always expect errors from
any method.

| Error Name                           | Error Type                                                   |
|--------------------------------------|--------------------------------------------------------------|
| InternalServerError                  | [ServerErrors](../../Errors/ServerErrors.md)                 |
| MissingParameter                     | * RPC Protocol                                               |
| AuthenticationFailure                | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| AlreadyAuthenticated                 | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| AuthenticationNotApplicable          | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| BadSessionChallengeAnswer            | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| IncorrectLoginCredentials            | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| IncorrectTwoFactorAuthenticationCode | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| InvalidClientPublicHash              | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| InvalidSessionIdentification         | [ValidationErrors](../../Errors/ValidationErrors.md)         |
| PrivateAccessTokenRequired           | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| SessionExpiredException              | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |
| TwoFactorAuthenticationRequired      | [AuthenticationErrors](../../Errors/AuthenticationErrors.md) |

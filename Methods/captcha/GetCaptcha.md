# GetCaptcha

Retrieves an existing captcha instance from the server with all the
properties that are required for a client to determine the status
of the captcha correctly.


## Description

A description of the method and it's properties

| Property                | Value                              |
|-------------------------|------------------------------------|
| Method Name             | GetCaptcha                         |
| Method                  | `captcha.get`                      |
| Response Type(s)        | [`Captcha`](../Objects/Captcha.md) |
| Version                 | 1.0.0.0                            |
| Permission Requirements | `GUEST`                            |


## Parameters

| Parameter Name | Type(s)  | Required | Specification  | Deprecated | Versions | Description                    |
|----------------|----------|----------|----------------|------------|----------|--------------------------------|
| captcha        | `string` | Yes      | Not Applicable | No         | 1.0      | The ID of the captcha instance |


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
| CaptchaNotFound              | [SecurityErrors](../../Errors/SecurityErrors.md)             |
| InvalidCaptchaId             | [ValidationErrors](../../Errors/ValidationErrors.md)         |
# AnswerCaptcha

Answers the captcha's challenge, if the incorrect answer is given
this will render the captcha blocked requiring the client to create a
new captcha instance. Otherwise the correct answer will render the
captcha's state to `SUCCESS` allowing the captcha ID to be passed on to
a method that requires a captcha ID. once the captcha has been processed
by the method it will be rendered `USED`


## Description

A description of the method and it's properties

| Property                | Value            |
|-------------------------|------------------|
| Method Name             | AnswerCaptcha    |
| Method                  | `captcha.answer` |
| Response Type(s)        | `boolean`        |
| Version                 | 1.0.0.0          |
| Permission Requirements | `GUEST`          |


## Parameters

| Parameter Name | Type(s)  | Required | Specification  | Deprecated | Versions | Description                    |
|----------------|----------|----------|----------------|------------|----------|--------------------------------|
| captcha        | `string` | Yes      | Not Applicable | No         | 1.0      | The ID of the captcha instance |
| answer         | `string` | Yes      | Not Applicable | No         | 1.0      | The answer to the captcha      |


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
| CaptchaExpired               | [SecurityErrors](../../Errors/SecurityErrors.md)             |
| CaptchaAlreadyUsed           | [SecurityErrors](../../Errors/SecurityErrors.md)             |
| IncorrectCaptchaAnswer       | [SecurityErrors](../../Errors/SecurityErrors.md)             |
| CaptchaBlocked               | [SecurityErrors](../../Errors/SecurityErrors.md)             |
| CaptchaAnswerNotApplicable   | [SecurityErrors](../../Errors/SecurityErrors.md)             |
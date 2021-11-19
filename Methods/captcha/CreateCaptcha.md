# CreateCaptcha

Creates a new captcha instance that the user must complete within
the given period of time, methods that require a completed captcha
instance will require the captcha's ID as a parameter.


## Description

A description of the method and it's properties

| Property                | Value                               |
|-------------------------|-------------------------------------|
| Method Name             | CreateCaptcha                       |
| Method                  | `captcha.create`                    |
| Response Type(s)        | [Captcha](../../Objects/Captcha.md) |
| Permission Requirements | `GUEST`                             |
| Available in Versions   | 1.0                                 |


## Parameters

This method accepts no parameters

## Possible Errors

A list of possible errors that this method may return, some errors
may not be listed here, your client should always expect errors from
any method.

| Error Name          | Error Type                                |
|---------------------|-------------------------------------------|
| InternalServerError | [ServerErrors](../Errors/ServerErrors.md) |
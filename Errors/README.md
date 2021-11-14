# Errors

Socialvoid has it's own unique set of error codes aside from the ones
used by the standard of the RPC server. while your client should handle
standard error codes of the RPC protcol; if you are building a Socialvoid
client then it's important that your client can handle and represent these
errors returned by the Socialvoid Server.

These errors are designed to explain what the issue is to the client or
user, in cases the client use these errors to automatically correct their
request but some errors may be caused by users as well. so it's important
that your client can understand and catch these errors accordingly.


## Error Codes

Errors come in three components.

 - Name
 - Code
 - Message

### Name
The name is the name of the error, it can be anything from `PeerNotFound`
to `InternalServerError`, this makes it easier for programming languages
to use a try catch statement to catch specific errors.

### Code
The error code is an alternative way to identify the error when the
name is not available or trying to catch a wide range of specific errors.
These are usually represented in integers.

### Message
A message explains more details about the error, while the same error
can occur for Situation A and B; Situation B may have a different reason
for the same error. This should not be used as a way to identify the error
and usually serves the purpose of troubleshooting or displaying the error
to the user.

--------------------------------------------------------------------------

## Error Types

Errors are split into sections to make it more easier to manage, you can
either identify errors individually by their error code or by range.

| Section               | Set | Range         | Description                                                                                                                                                                                                |
|-----------------------|-----|---------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Validation Errors     | 21  | 8448 - 8703   | Errors that returns when the given parameters or data is invalid in some way or another                                                                                                                    |
| Authentication Errors | 22  | 8704 - 12543  | Errors related to authentication/session management, these errors are usually returned when there was an error while trying to authenticate or there are session errors such as the session being expired. |
| Network Errors        | 31  | 12544 - 16383 | Errors related to actions on the network, peers not being found, posts not being found, incorrect permissions, rate limits, etc.                                                                           |
| Server Errors         | 40  | 16384 - 24575 | Errors related to the server, unexpected errors, servers related to administrators/moderators performing administrative tasks on the server                                                                |
| Security Errors       | 60  | 24576 - *(?)  | Errors relating to security issues or tasks                                                                                                                                                                |

## Error Codes

 - [Validation Errors](ValidationErrors.md) 8448 - 8703
 - [Authentication Errors](AuthenticationErrors.md) 8704 - 8979
 - [Network Errors](NetworkErrors.md) 12544 - 16383
 - [Server Errors](ServerErrors.md) 16384 - 24575
 - [Security Errors](SecurityErrors.md) 24576 - *(?)
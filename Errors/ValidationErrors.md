# Validation Errors

These are errors raised when your client passes on parameters or data
that is invalid in some way or another.

| Name                         | Code | Hex Code | Deprecated | Versions | Description                                                                                                             |
|------------------------------|------|----------|------------|----------|-------------------------------------------------------------------------------------------------------------------------|
| InvalidUsername              | 8448 | 0x02100  | No         | 1.0      | The given username is invalid and does not meet the specification                                                       |
| InvalidPassword              | 8449 | 0x02101  | No         | 1.0      | The given password is insecure, see the message for further details                                                     |
| InvalidFirstName             | 8450 | 0x02102  | No         | 1.0      | The First Name provided contains invalid characters and or is too long, see the message for further details             |
| InvalidLastName              | 8451 | 0x02103  | No         | 1.0      | The Last Name provided contains invalid characters and or is too long, see the message for further details              |
| InvalidBiography             | 8452 | 0x02104  | No         | 1.0      | The Biography is too long or contains invalid characters, see the message for further details                           |
| UsernameAlreadyExists        | 8453 | 0x02105  | No         | 1.0      | The username is already registered in the network and cannot be used                                                    |
| InvalidPeerInput             | 8454 | 0x02106  | No         | 1.0      | The client provided an invalid peer identification as input                                                             |
| InvalidPostText              | 8455 | 0x02107  | No         | 1.0      | The post contains invalid characters or is too long, see the message for further details                                |
| InvalidClientPublicHash      | 8456 | 0x02108  | No         | 1.0      | The client's public hash is invalid and cannot be identified as a sha256                                                |
| InvalidClientPrivateHash     | 8457 | 0x02109  | No         | 1.0      | The client's private hash is invalid and cannot be identified as a sha256                                               |
| InvalidPlatform              | 8458 | 0x0210a  | No         | 1.0      | The platform name contains invalid characters or is too long, see the message for further details                       |
| InvalidVersion               | 8459 | 0x0210b  | No         | 1.0      | The version is invalid or is too long, see the message for further details                                              |
| InvalidClientName            | 8460 | 0x0210c  | No         | 1.0      | The client name contains invalid characters or is too long, see the message for further details                         |
| InvalidSessionIdentification | 8461 | 0x0210d  | No         | 1.0      | The session identification object is invalid, see the message for further details                                       |
| InvalidFileForProfilePicture | 8462 | 0x0210e  | No         | 1.0      | The given file is invalid for a profile picture                                                                         |
| FileTooLarge                 | 8463 | 0x0210f  | No         | 1.0      | The given file is too large to be processed                                                                             |
| InvalidHelpDocumentId        | 8464 | 0x02110  | No         | 1.0      | The given Help Document ID is invalid                                                                                   |
| AgreementRequired            | 8465 | 0x02111  | No         | 1.0      | The client/user must agree to the condition to invoke the method                                                        |
| InvalidPageValue             | 8466 | 0x02112  | No         | 1.0      | The `page` parameter contains an invalid value. It cannot be a negative value or 0, see the message for further details |
| InvalidGeoLocation           | 8467 | 0x02113  | No         | 1.0      | The given geo location value is invalid or too long                                                                     |
| InvalidUrlValue              | 8468 | 0x02114  | No         | 1.0      | The given URL input is invalid                                                                                          |
| TooManyAttachments           | 8469 | 0x02115  | No         | 1.0      | Raised when the amount of attachments exceeds what the server supports                                                  |
| InvalidAttachments           | 8470 | 0x02116  | No         | 1.0      | Raised when the given attachments are invalid                                                                           |
| InvalidFileName              | 8471 | 0x02117  | No         | 1.0      | Raised when the given filename is invalid                                                                               |
# Security Errors

These are errors raised when a security related issue raises
wtih the server and or relation with the client

| Name                       | Code  | Hex Code | Deprecated | Versions | Description                                                                 |
|----------------------------|-------|----------|------------|----------|-----------------------------------------------------------------------------|
| CaptchaNotFound            | 24576 | 0x06000  | No         | 1.0      | Raised when the requested captcha record was not found                      |
| CaptchaExpired             | 24577 | 0x06001  | No         | 1.0      | Raised when the requested captcha has expired and cannot be used            |
| CaptchaAlreadyUsed         | 24578 | 0x06002  | No         | 1.0      | Raised when the requested captcha has already been used                     |
| IncorrectCaptchaAnswer     | 24579 | 0x06003  | No         | 1.0      | Raised when the given answer to the captcha is invalid                      |
| CaptchaAlreadyAnswered     | 24580 | 0x06004  | No         | 1.0      | Raised when attempting to answer a captcha that has already been answered   |
| CaptchaBlocked             | 24581 | 0x06005  | No         | 1.0      | Raised when attempting to use a captcha that has been blocked by the server |
| CaptchaAnswerNotApplicable | 24582 | 0x06006  | No         | 1.0      | Raised when the captcha does not accept answers from the client             |
| IncompleteCaptcha          | 24583 | 0x06007  | No         | 1.0      | Raised when attempting to use a captcha that has not been answered          |
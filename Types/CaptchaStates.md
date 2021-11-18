# Captcha States

Captcha states indicates the current state of the captcha
instance, which determines the result when attempting to
use this captcha in a method that requires it. 

A captcha can only be in the `SUCCESS` state to be used
in a method, any other state will raise an error.

| Type            | Description                                                                                                                             |
|-----------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| AWAITING_ANSWER | Indicates the captcha is currently waiting for an answer from the client                                                                |
| EXPIRED         | Indicates the captcha has expired and can no longer be used                                                                             |
| BLOCKED         | Indicates the user provided an answer which is incorrect and rendered the captcha blocked, the user must request a new captcha          |
| SUCCESS         | Indicates the user provided an answer which is correct and the captcha ID can be used to execute the method                             |
| USED            | Indicates the user used the captcha to execute the method and rendered the captcha used, the user must request a new captcha if needed. |
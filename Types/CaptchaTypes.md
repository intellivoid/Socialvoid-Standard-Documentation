# Captcha Types

Captcha types indicates the type of value the
captcha represents and how the client should
represent it. At the moment there's only two
value types which are text and image. Additonally
the type aids in client-side localization allowing
the client to provide on-screen instructions to the
user on how to solve the captcha


# Types

| Type                                  | Value Type | Description                                                                                                                                                                                                                                                                                                    |
|---------------------------------------|------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| NONE                                  | Text       | Indicates that no answer or action is required to complete the captcha, the captcha is considered completed upon creation.                                                                                                                                                                                     |
| TEXT_MATH_CHALLENGE                   | Text       | Indicates that the client must display the captcha value to the user and that the user must reproduce an answer from the value (e.g.; the value may contain a math question like "1+1" and the answer from the user would be 2)                                                                                |
| TEXT_QUESTION_CHALLENGE               | Text       | Indicates that the client must display the captcha value to the user and the user must reproduce the answer from the value, e.g. the value may be like "What's the color orange?" and the answer would be "orange".                                                                                            |
| IMAGE_TEXT_SCRAMBLE_CHALLENGE         | Image      | Indicates that the client must display the captcha image to the user from the value, the value being a base64 encoded data uri scheme representation. The user must provide an answer from the text scramble shown in the images. This is easy for a human to do but difficult for a computer.                 |
| IMAGE_TEXT_SCRAMBLE_MATH_CHALLENGE    | Image      | Indicates that the client must display the captcha image to the user from the value, the value being a base64 encoded data uri scheme representation. The user must provide an answer from the math equation that's scrambled shown in the images. This is easy for a human to do but difficult for a computer |
| IMAGE_OBJECT_IDENTIFICATION_CHALLENGE | Image      | Indicates that the client must display the captcha image to the user from a value, the value being a base64 encoded data uri scheme representation. The user must provide an answer from the image shown, the image, eg if the image is a picture of a clown then the answer would be "Clown"                  |
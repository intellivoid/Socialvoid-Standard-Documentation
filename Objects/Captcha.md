# Captcha

A captcha object contains basic information about the captcha's
current state and type, indicating to the client on how to
display the captcha correctly to the user.

## **Important Note**

The captcha value will be different depending on the captcha type,
for example a captcha value **SHOULD NOT** always be displayed to 
the user as is as it may contain arbitary data that should be
displayed as an image instead of a value to display to the user.

See the captcha types available to get more information about
how the type can alter the value property of the captcha.

## Value Types

In [CaptchaTypes](../Types/CaptchaTypes.md) there's an indication if
the value type is an `Image` or `Text`, this tells the client how
to show the captcha correctly when the value can switch between a
user-friendly value to not-so-friendly value. 

### Text Value Types

Text value types are shown to the user as is
without any need of processing.

### Image Value Types

Image value types are represented as data URI schemes
with the following syntax, this information has been taken from
[Wikipedia](https://en.wikipedia.org/wiki/Data_URI_scheme)

```
data:[<media type>][;base64],<data>
```

 - The **scheme**, `data`. It is followed by a colon (`:`).
 - An optional **media type**. The media type part may include one or
   more parameters, in the format `attribute=value`, separated by
   semicolons (`;`) . A common media type parameter is `charset`,
   specifying the character set of the media type, where the value is
   from the IANA list of
   [character set](https://en.wikipedia.org/wiki/Character_set) names.
   If one is not specified, the
   [media type](https://en.wikipedia.org/wiki/Media_type) of the data
   URI is assumed to be `text/plain;charset=US-ASCII`.
 - An optional **base64 extension** `base64`, separated from the
   preceding part by a semicolon. When present, this indicates that the
   data content of the URI is
   [binary data](https://en.wikipedia.org/wiki/Binary_data), encoded in
   ASCII format using the [Base64](https://en.wikipedia.org/wiki/Base64)
   scheme for [binary-to-text encoding](https://en.wikipedia.org/wiki/Binary-to-text_encoding).
 - The **data**, separated from the preceding part by a comma (`,`). The
   data is a sequence of zero or more [octets](https://en.wikipedia.org/wiki/Octet_(computing))
   represented as characters.

## Structure

| Property Name | Type(s)                                      | Specification  | Deprecated | Versions | Description                                                                                                                                 |
|---------------|----------------------------------------------|----------------|------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------|
| id            | `string`                                     | Not Applicable | No         | 1.0      | The ID of the captcha instance, use this as the value for providing a completed captcha instance to methods that require it as a parameter. |
| type          | [`CaptchaTypes`](../Types/CaptchaTypes.md)   | Not Applicable | No         | 1.0      | The captcha type, this indicates how the client should handle the captcha value                                                             |
| value         | `string`                                     | Not Applicable | No         | 1.0      | The captcha value to display to the user                                                                                                    |
| state         | [`CaptchaStates`](../Types/CaptchaStates.md) | Not Applicable | No         | 1.0      | The current state of the captcha                                                                                                            |
| expires       | `integer`                                    | Not Applicable | No         | 1.0      | The Unix Timestamp for when the captcha expires                                                                                             |
# ErrorDefinition

The object ErrorDefinition contains information about
an error that the server is capable of returning if a
method fails to execute.

## Structure

| Property Name | Type(s)   | Specification  | Deprecated | Versions | Description                                                                                                                                                |
|---------------|-----------|----------------|------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id            | `string`  | Not Applicable | No         | 1.0      | The ID of the ErrorDefinition, which is a crc32 hash of the following value; `<ProtocolVersion>:<ErrorName>:<ErrorCode>` (`1.0:InternalServerError:16384`) |
| name          | `string`  | Not Applicable | No         | 1.0      | The name of the error, this is a unique value.                                                                                                             |
| description   | `string`  | Not Applicable | No         | 1.0      | A description of the error                                                                                                                                 |
| error_code    | `integer` | Not Applicable | No         | 1.0      | The error code, this is a unique value.                                                                                                                    |
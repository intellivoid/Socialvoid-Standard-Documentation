# ObjectDefinition

The object ObjectDefinition explains the structure
of a object that the server could return or work with.

## Structure

| Property Name | Type(s)                                           | Specification  | Deprecated | Versions | Description                                                                                          |
|---------------|---------------------------------------------------|----------------|------------|----------|------------------------------------------------------------------------------------------------------|
| id            | `string`                                          | Not Applicable | No         | 1.0      | A crc32 hash of the object's ID following the value; `<ProtocolVersion>:<ObjectName>` eg; `1.0:Peer` |
| name          | `string`                                          | Not Applicable | No         | 1.0      | The name of the object                                                                               |
| description   | `string`                                          | Not Applicable | No         | 1.0      | A description of the object                                                                          |
| parameters    | [`ParameterDefinition[]`](ParameterDefinition.md) | Not Applicable | No         | 1.0      | An array of ParameterDefinitions explaining the object structure                                     |
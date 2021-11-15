# MethodDefinition

The object MethodDefinition contains information about
method, namespace, permission requirements and the
parameters it accepts


## Structure

| Property Name           | Type(s)                                           | Specification  | Deprecated | Versions | Description                                                                                                       |
|-------------------------|---------------------------------------------------|----------------|------------|----------|-------------------------------------------------------------------------------------------------------------------|
| id                      | `string`                                          | Not Applicable | No         | 1.0      | A crc32 hash of the methods's ID following the value; `<ProtocolVersion>:<MethodName>` eg; `1.0:timelime.compose` |
| namespace               | `string`                                          | Not Applicable | No         | 1.0      | The namespace of the method e.g., `timeline`, `network`, etc.                                                     |
| method_name             | `string`                                          | Not Applicable | No         | 1.0      | The name of the method without the namepsace `compose`, `like`, `repost`, etc.                                    |
| method                  | `string`                                          | Not Applicable | No         | 1.0      | The full name of the method with the leading namespace e.g. `timeline.compose`, `timeline.like`                   |
| description             | `string`                                          | Not Applicable | No         | 1.0      | The description of the method                                                                                     |
| permission_requirements | [`PermissionSets[]`](../Flags/PermissionSets.md)  | Not Applicable | No         | 1.0      | The array of permission requirements for this method                                                              |
| parameters              | [`ParameterDefinition[]`](ParameterDefinition.md) | Not Applicable | No         | 1.0      | An array of parameters that the method accepts                                                                    |
| return_types            | [`TypeDefinition[]`](TypeDefinition.md)           | Not Applicable | No         | 1.0      | An array of possible return types                                                                                 |
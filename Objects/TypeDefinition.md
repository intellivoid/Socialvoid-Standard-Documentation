# TypeDefinition

The object TypeDefinition contains information
about the defined type, the `vector` property can
indicate if the type is being represented is a
vector (list/array) and should be iterated

## Structure

| Property Name | Type(s)                                                       | Specification  | Deprecated | Versions | Description                                                                                                                                       |
|---------------|---------------------------------------------------------------|----------------|------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| type          | [`string`](README.md), [`BuiltinType`](../Types/BuiltinTypes) | Not Applicable | No         | 1.0      | The type of the value, can either be a builtin type or one of the pre-defined object being represented as a string, eg; `string`,  `Peer`, `null` |
| vector        | `boolean`                                                     | Not Applicable | No         | 1.0      | Indicates if the type is represented as a vector or not (List/Array)                                                                              |
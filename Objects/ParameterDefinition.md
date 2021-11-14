# ParameterDefinition

The object ParameterDefinition contains information
about the parameters used and or available, usually
represented within an array; this object indicates the
availabe types, name, description and requirement of
the parameter. This can be applied to object property
structures or method parameters

## Structure

| Property Name | Type(s)                                 | Specification  | Deprecated | Versions | Description                                                                           |
|---------------|-----------------------------------------|----------------|------------|----------|---------------------------------------------------------------------------------------|
| name          | `string`                                | Not Applicable | No         | 1.0      | The name of the parameter                                                             |
| types         | [`TypeDefinition[]`](TypeDefinition.md) | Not Applicable | No         | 1.0      | An array of types that are used for this parameter                                    |
| required      | `boolean`                               | Not Applicable | No         | 1.0      | Indicates if this parameter is required or not, for objects this will always be true. |
| description   | `string`                                | Not Applicable | No         | 1.0      | The description of the parameter                                                      |
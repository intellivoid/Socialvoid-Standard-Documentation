# ProtocolDefinitions

The ProtocolDefinitions object contains object definitions
of what the server's version of the protocol has defined
and what their use cases are. Much like a documentation
representation in a object structure that can be understood
by clients which allows for constructors during runtime.

## Structure

| Property Name | Type(s)                                     | Specification  | Deprecated | Versions | Description                                                                                                               |
|---------------|---------------------------------------------|----------------|------------|----------|---------------------------------------------------------------------------------------------------------------------------|
| version       | `string`                                    | Not Applicable | No         | 1.0      | The version of the protocol being used by the server, eg; 1.0                                                             |
| errors        | [`ErrorDefinition[]`](ErrorDefinition.md)   | Not Applicable | No         | 1.0      | A list of error definitions defined by the server and protocol with their respective error codes and descriptions         |
| objects       | [`ObjectDefinition[]`](ObjectDefinition.md) | Not Applicable | No         | 1.0      | A list of object definitions defined by the server and protocol with their respective descriptions, names and parameters. |
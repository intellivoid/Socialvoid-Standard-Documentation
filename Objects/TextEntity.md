# TextEntity

The text entity object describes the text type, this is useful for clients
to render the given text correctly. For example a "@mention" will have
a TextEntity with the value `mention`. So that the client can perform
an action when this entity is clicked.


## Structure

| Property Name | Type(s)          | Specification                                  | Deprecated | Versions | Description                                                                                                                                                                                                                                                                          |
|---------------|------------------|------------------------------------------------|------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| type          | `string`         | [TextEntityTypes](../Types/TextEntityTypes.md) | No         | 1.0      | The text entity type                                                                                                                                                                                                                                                                 |
| offset        | `int`            | Not Applicable                                 | No         | 1.0      | The offset for when the entity begins in the text                                                                                                                                                                                                                                    |
| length        | `int`            | Not Applicable                                 | No         | 1.0      | The length of the entity                                                                                                                                                                                                                                                             |
| value         | `string`, `null` | Not Applicable                                 | No         | 1.0      | The value of the entity, for styling entities such as `BOLD`, `ITALIC`, etc.  this value will be null, but for values such as `MENTION`, `HASHTAG` & `URL` the value will contain the respective value for the entity, for example a `URL` entity will contain a value of a http URL |

# Session

A session object is contains basic information about the session.


## Structure

| Property Name | Type(s)    | Specification                                                         | Deprecated | Versions | Description                                                   |
|---------------|------------|-----------------------------------------------------------------------|------------|----------|---------------------------------------------------------------|
| id            | `string`   | [SessionIdSpecification](../Specifications/SessionIdSpecification.md) | No         | 1.0      | The ID of the session obtained when establishing a session    |
| flags         | `string[]` | Not Applicable                                                        | No         | 1.0      | An array of flags that has been set to this session           |
| authenticated | `bool`     | Not Applicable                                                        | No         | 1.0      | Indicates if the session is currently authenticated to a user |
| created       | `integer`  | Not Applicable                                                        | No         | 1.0      | The Unix Timestamp for when this session was first created    |
| expires       | `integer`  | Not Applicable                                                        | No         | 1.0      | The Unix Timestamp for when this session expires              |
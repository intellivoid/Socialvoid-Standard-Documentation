# SessionEstablished

A SessionEstablished object is returned when you create a session. This
object returns basic information about the session that the server
has created for you.


## **Important Note**

Your client must store these values safely. The session challenge cannot
be obtained in any other way other then when creating the session.


## Structure

| Property Name | Type(s)  | Specification                                                                       | Deprecated | Versions | Description                                                |
|---------------|----------|-------------------------------------------------------------------------------------|------------|----------|------------------------------------------------------------|
| id            | `string` | [SessionIdSpecification](../Specifications/SessionIdSpecification.md)               | No         | 1.0      | The ID of the session obtained when establishing a session |
| challenge     | `string` | [SessionChallengeSpecification](../Specifications/SessionChallengeSpecification.md) | No         | 1.0      | The TOTP based challenge secret                            |
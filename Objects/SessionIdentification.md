# SessionIdentification

A SessionIdentification object allows your client to identify the session
it's using and prove that it is the owner of the session, it proves as
a identification effort and security effort.

Most methods that requires authentication or some sort of identity will
require you to pass on this object as a parameter under 
`session_identification`, missing parameters or invalid security values
will cause the request to fail as it's validated upon request.

## Structure

| Property Name      | Type(s)  | Specification                                                                       | Deprecated | Versions | Description                                                                                                             |
|--------------------|----------|-------------------------------------------------------------------------------------|------------|----------|-------------------------------------------------------------------------------------------------------------------------|
| session_id         | `string` | [SessionIdSpecification](../Specifications/SessionIdSpecification.md)               | No         | 1.0      | The ID of the session obtained when establishing a session                                                              |
| client_public_hash | `string` | [ClientHashSpecification](../Specifications/ClientHashSpecification.md)             | No         | 1.0      | The Public Hash of the client used when establishing the session                                                        |
| challenge_answer   | `string` | [SessionChallengeSpecification](../Specifications/SessionChallengeSpecification.md) | No         | 1.0      | The session challenge answer revolving around the client's private hash,  the same client used to establish the session |
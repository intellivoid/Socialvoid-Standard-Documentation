# Peer

A peer object provides a basic description and identification a peer entity
that can contain information used to identify a peer on the client or basic 
flags and properties of the peer to pre-determine what actions are available
for a peer.

## Structure

| Property Name | Type(s)    | Specification                      | Deprecated | Versions | Description                                  |
|---------------|------------|------------------------------------|------------|----------|----------------------------------------------|
| id            | `string`   | Not Applicable                     | No         | 1.0      | The ID of the user associated to the network |
| type          | `string`   | [PeerTypes](../Types/PeerTypes.md) | No         | 1.0      | The type of the peer entity                  |
| name          | `string`   | Not Applicable                     | No         | 1.0      | The display name of the peer                 |
| username      | `string`   | Not Applicable                     | No         | 1.0      | The username associated with this peer       |
| flags         | `string[]` | Not Applicable                     | No         | 1.0      | Flags associated with this peer              |
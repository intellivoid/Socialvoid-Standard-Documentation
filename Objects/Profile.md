# Profile

The profile object provides a profile display for a peer entity, this is 
mainly used to represent a "Profile" display of a peer.

## Structure

| Property Name         | Type(s)                                         | Specification  | Deprecated | Versions | Description                                                                           |
|-----------------------|-------------------------------------------------|----------------|------------|----------|---------------------------------------------------------------------------------------|
| first_name            | `string`                                        | Not Applicable | No         | 1.0      | The first name of the entity                                                          |
| last_name             | `string`, `null`                                | Not Applicable | No         | 1.0      | The last name of the entity                                                           |
| name                  | `string`                                        | Not Applicable | No         | 1.0      | The full display name of the entity                                                   |
| biography             | `string`, `null`                                | Not Applicable | No         | 1.0      | A biography or description of the entity                                              |
| location              | `string`, `null`                                | Not Applicable | No         | 1.0      | The location of the entity                                                            |
| url                   | `string`, `null`                                | Not Applicable | No         | 1.0      | The URL of the entity (Can be a website or a blog, etc)                               |
| followers_count       | `int`                                           | Not Applicable | No         | 1.0      | The amount of followers that this entity has                                          |
| following_count       | `int`                                           | Not Applicable | No         | 1.0      | The amount of peers that this entity is following                                     |
| display_picture_sizes | [`DisplayPictureSize[]`](DisplayPictureSize.md) | Not Applicable | No         | 1.0      | An array of display picture size objects that represents the entity's display picture |
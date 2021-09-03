# HelpDocument

A help document is often retrieved from the server as a way to
represent a document to the user for multiple purposes, from quick
guides to server announcements or the legal documents required to
be shown to the user before they register an account to the network.

## Structure

| Property Name | Type(s)                       | Specification  | Deprecated | Versions | Description                                                                   |
|---------------|-------------------------------|----------------|------------|----------|-------------------------------------------------------------------------------|
| id            | `string`                      | Not Applicable | No         | 1.0      | The ID of the document, if the document gets updated then the ID will change. |
| text          | `string`                      | Not Applicable | No         | 1.0      | The text contents of the document                                             |
| entities      | [TextEntity[]](TextEntity.md) | Not Applicable | No         | 1.0      | An array of text entities being represented in the text                       |
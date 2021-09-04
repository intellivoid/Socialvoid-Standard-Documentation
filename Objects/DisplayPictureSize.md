# DisplayPictureSize

This object describes the size of a display picture followed by a document
object that results in said display picture size.

## Structure

| Property Name | Type(s)                   | Specification  | Deprecated | Versions | Description                                                                                              |
|---------------|---------------------------|----------------|------------|----------|----------------------------------------------------------------------------------------------------------|
| size          | `string`                  | Not Applicable | No         | 1.0      | The size of the picture (eg; 640x640), the first section being the width and the second being the height |
| document      | [`Document`](Document.md) | Not Applicable | No         | 1.0      | The document object that points to the display picture                                                   |
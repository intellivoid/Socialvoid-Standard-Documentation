# Document

A document object contains basic information about the file associated
with the document and the document ID used to retrieve the document
from the [CDN Server](../Specifications/CdnServer.md)

## **Important Note**

Note when using a Document ID obtained by any other medium other than
from the server the document may not be accessible due to the reason being
that the authenticated peer in your session may not have access rights to
the document. For example, a private chat between two peers may share
a document but if a peer outside that private chat attempts to access the
document ID, an access denied error will be returned.

## Structure

| Property Name     | Type(s)    | Specification                      | Deprecated | Versions | Description                                                 |
|-------------------|------------|------------------------------------|------------|----------|-------------------------------------------------------------|
| id                | `string`   | Not Applicable                     | No         | 1.0      | The ID of the document                                      |
| file_mime         | `string`   | Not Applicable                     | No         | 1.0      | The Mime of the file                                        |
| file_name         | `string`   | Not Applicable                     | No         | 1.0      | The original name of the file                               |
| file_size         | `int`      | Not Applicable                     | No         | 1.0      | The size of the file in bytes                               |
| file_type         | `string`   | [FileTypes](../Types/FileTypes.md) | No         | 1.0      | The type of file detected by the server                     |
| flags             | `string[]` | Not Applicable                     | No         | 1.0      | An array of flags associated with this document             |

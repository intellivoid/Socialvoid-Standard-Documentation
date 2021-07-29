# Session ID Specification

A Session ID is a unique string of random alphanumeric characters that
is used to save and modify the client's state in relation to the Network.
Making scenarios such as authentication or user states possible server-side
while only having the client to store information such as the session ID.

Storing the session details server-side also provides somewhat more
security and control where the client cannot easily modify states and
for example give itself administrator access to your network.

Session IDs must be unique, once expired or no longer in-use, they can
be reused for as long as the old session data has been wiped out and
ready to be used again with a brand new client.


## Type

A session ID must be an alphanumeric string such as a hash without
special characters or whitespace. The length and complexity varies 
on your network configuration, but an ideal ID string should contain 
128 characters of letters and numbers.

## Example

```
ea5fdef247a14821114aa64b78e95bb094ab30886c93febd9d8ed871f2db976214a0f1a91301a340c16a5aef03517b1cde3d15a1119e591551ed0698ac4e2676
```
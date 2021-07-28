# Client Hash Specification

A client hash (both public and private) consists of random SHA256 hashes
represented in string form. These are unique to every user, it can either
be unique to a client where the same hashes can be used to establish 100
sessions or for more security, it can be unique per session.

## Implementation

```python
import random
import string
import hashlib

# Define the characters to be used
characters = string.ascii_letters + string.digits + string.punctuation

# Create a set of random characters
raw_data = ''.join(random.choice(characters) for i in range(1028))

# Create a SHA256 checksum from raw_data
results = hashlib.sha256(raw_data.encode('utf-8')).hexdigest()

print(results)
```

```
9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08
```

## Security

 - When possible, use a secured and true method of random data generation, this above example of the implementation is not considered secured.
 - The Client's Public Hash and Private Hash cannot be the same, the server must reject this.
 - The values cannot contain anything other than alphanumeric characters, the server must reject the value if it contains non-alphanumeric characters.
 - The values must be always be 64 characters in length, the server must reject values that contains less or more than 64 characters.
 - The values should not be hard-coded and should always be unqiue per-client or per-session. But you must keep these hashes safe, the server may not be able to check this as it is purely up to the client's security.
 - The Public Hash will always be used in a session identification, see [SessionIdentification](../Objects/SessionIdentification.md)
 - The Private Hash is only once used when establishing a session, and must be used in the results of a session challenge, see [SessionChallengeSpecification](SessionChallengeSpecification.md) and [SessionIdentification](../Objects/SessionIdentification.md) for further details.
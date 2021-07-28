# Session Challenge Specification

A session challenge proves to the server that you are the client that
established the session, using a combination of Time-Based 
OneTimePassword (TOTP) & SHA1 Checksum. This challenge requires to
be completed whenever you invoke a method that requires to identify
the session you are using.

## Implementation

```python
import hashlib
import base64
import hmac
import struct
import sys
import time

"""
Implementation of the HTOP Algorithm 

"""
def hotp(key, counter, digits=6, digest='sha1'):
    key = base64.b32decode(key.upper() + '=' * ((8 - len(key)) % 8))
    counter = struct.pack('>Q', counter)
    mac = hmac.new(key, counter, digest).digest()
    offset = mac[-1] & 0x0f
    binary = struct.unpack('>L', mac[offset:offset+4])[0] & 0x7fffffff
    return str(binary)[-digits:].zfill(digits)

"""
Implementation of the Time-Based One-Time Password Algorithm
"""
def totp(key, time_step=30, digits=6, digest='sha1'):
    return hotp(key, int(time.time() / time_step), digits, digest)

"""
The Challenge Answer implementation
"""
def answer_challenge(client_private_hash, challenge):
    totp_code = totp(challenge)
    return hashlib.sha1("{0}{1}".format(totp_code, client_private_hash).encode()).hexdigest()

private_hash = "866d3218b239d39c174fa2b16f54e0fa58f9c69fce8c2d941c12a47a7bc75229"
session_challenge = "U7IJH7BKTV7NJHCGBG7CD4JQHQOPC2VSOVUDICON74656ENMZGZINUL537KH4VCC"
answer = answer_challenge(private_hash, session_challenge)

print(answer)
```

```
dfbc72798b41977d340584dd4afc8e085d3d824d
```

## Resources
 - https://en.wikipedia.org/wiki/HMAC-based_one-time_password
 - https://datatracker.ietf.org/doc/html/rfc6238

## TOTP Libraries
These libraries has a implementation of the TOTP algorithm but should
only be used as a helper, as these libraries cannot generate the final
SHA1 result that is required.

 - https://github.com/pyauth/pyotp (Python)
 - https://github.com/soveran/totp (Ruby)
 - https://github.com/suvash/one-time (Clojure)
 - https://github.com/LanceGin/jsotp (Javascript)
 - https://github.com/tilkinsc/COTP (C/C++)
 - https://github.com/pedrosancao/php-otp (PHP)
 - https://github.com/samdjstevens/java-totp (Java)
 - https://github.com/kspearrin/Otp.NET (C#)

## Security

 - By no means is this a bullet-proof method, an attacker who obtains both
   a client's public and private hash can pretend to be that client and
   hijack the session. It's important that your client stores the hashes
   safely on the client's side.
 - The results must always be a SHA1 checksum of the following formula
   `(totp_code + client_private_hash)`, no spaces, no special characters.
   The server must consider your answer to be incorrect if it's not a
   correct string representation
 - The server can take out-of-sync in consideration for the value to be
   too new or too old by a discrepancy of 1.
 - The answer must always be calculated before sending a 
   [SessionIdentification](../Objects/SessionIdentification.md) object
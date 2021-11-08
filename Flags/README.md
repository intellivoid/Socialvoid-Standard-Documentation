# Flags

In Socialvoid objects may contain flags to indicate multiple
important descriptors of the object, for example a post may
contain flags `DELTED` and `DMCA_VIOLATION` to indicate that
not only is the post deleted but it's due to a DMCA violation.

This can help clients display this information to the user
or handle the content differently depending on the flags set,
for instance `Like` won't be interactiable for posts that
are deleted. So this is helpful to pre-determine this before
sending out a request.

Servers may introduce custom flags but should be documented
and understood by clients.


## Contents

 - [PermissionSets](PermissionSets.md)
 - [PostFlags](PostFlags.md)
 - [UserFlags](UserFlags.md)
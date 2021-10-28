# Introduction

Socialvoid is a free and open source protocol & standard
for creating a social media/communications platform that
anyone can use or build upon on. This standard documentation
is provided to the public which helps explain what Socialvoid
is, how to use it, how to build for it and how it's designed.

Socialvoid is a project created by Intellivoid Technologies
and all of the amazing contributors that helped build this
protocol by writing software for it and shaping how
Socialvoid should work. So we must express that Socialvoid
**is not** a Intellivoid product or service, but rather
a standard organized by Intellivoid and created by both
Intellivoid and outside collaborators. So this means
anyone can use this standard to remix, hack and build
their own variation of Socialvoid for as long as the standard
is followed so that both clients and servers can communicate
without breaking the standard. Breaking the standard will only
cause clients not being able to communicate with your
variation unless it's breaking the standard to do so. Which
is what the standard is built to avoid in the first place.

## Standard Protocol

When we talk about Socialvoid's standard protocol we are
talking about the pre-defined objects, methods, types and
errors. the data structure that both a client and server can
understand when communicating with each other. We can call this
the "language" that the client and server speaks.

The means of transportation can vary, from JSON-RPC via HTTP/TCP
or something arbitery like MsgPack RPC. The client and server
can decide how best to communicate but one thing must remain the
same is the data being exchanged. Encrypted or not, when the
client invokes a method such as `timeline.compose` the client
should expect a `Post` object as the response or an error using
one of the many pre-defined error codes that is understood by
both the machine and human. If the server is returning something
unexpected such as a non-standard object that the client does
not expect OR understand, this can lead to problems. This is
something to avoid at all costs, the goal of the standard
is to have a clear understanding of what to expect and how
to understand it while allowing flexibility to implement other
features or changes in the future without breaking the
communication barrier that is already established and understood.

There will be cases where a new version of the standard protocol
will introduce different object structures, more methods or
different parameter usage which may break older clients.
The standard protocol is also designed to tell the client what
version of the "language" it speaks and adjust accordingly if
supported.


## Standard Protocol Version

The current iteration of the protocol standard is 1.0, if changes
are done to the standard such as the introduction of new methods,
objects and even namespaces then the version must be bumped and
the server must reflect this change. The server does not need to
support previous versions but it would be a nice addition if it
does. Clients should detect the protocol version and adjust
accordingly if it's supported to do so otherwise things may
not work as expected.

Servers may have their own version to reflect the version of
the software they're running. this version does not reflect
or have anything to do with the standard protocol version. for
example there may be Socialvoid server implementation called
"SocialvoidServer" with a version number of `2.14.1` but
communicates with the standard protocol version `1.0`. The server
version may be useful to keep track of updates to patches,
bug fixes or performance improvements but does not reflect
any changes to the protocol itself so clients should be able
to communicate to the server without requiring any changes
unless a different protocol version is being used.
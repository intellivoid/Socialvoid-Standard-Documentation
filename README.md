# Socialvoid Standard 1.0

This is the rough documentation of the Socialvoid Standard, things are to
be changed depending on the current issues opened by volunteers or
core-developers, this is to be used as a base for the Socialvoid Standard.


## What is Socialvoid?

Socialvoid is a multi-purpose social media platform that is designed to
combine the best things about Twitter, Telegram & Reddit into one platform
with cross-platform and open source in mind; While Intellivoid's server
implementation of Socialvoid will not be open source, the whole standard
is meant to be used by clients and servers to allow users to build open
source servers that these clients can communicate to without having to
come up with their own standard, in other words; one client can connect
to many variations of Socialvoid for as long as the standard is followed.

## Getting Started

Socialvoid is basically an RCP server with it's own set of methods, 
objects and representations but following the standard of whatever protcol
it chooses to use. Clients are basically RCP Clients that are designed
to communicate to one endpoint.


## Table of contents

1. [Errors](Errors/README.md)
  * [Validation Errors](Errors/ValidationErrors.md) 8448 - 8703
  * [Authentication Errors](Errors/AuthenticationErrors.md) 8704 - 8979
  * [Media Errors](Errors/MediaErrors.md) 8960 - 12543
  * [Network Errors](Errors/NetworkErrors.md) 12544 - 16383
  * [Server Errors](Errors/ServerErrors.md) 16384 - *(?)
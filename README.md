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
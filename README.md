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

Socialvoid is basically an RPC server with it's own set of methods, 
objects and representations but following the standard of whatever protocol
it chooses to use. Clients are basically RPC Clients that are designed
to communicate to one endpoint.


## Table of contents

 - [Errors](Errors/README.md)
      * [Validation Errors](Errors/ValidationErrors.md) 8448 - 8703
      * [Authentication Errors](Errors/AuthenticationErrors.md) 8704 - 8979
      * [Network Errors](Errors/NetworkErrors.md) 12544 - 16383
      * [Server Errors](Errors/ServerErrors.md) 16384 - *(?)

 - [Methods](Methods/README.md)
      * [Account](Methods/account/README.md)
         * [ClearProfileBiography](Methods/account/ClearProfileBiography.md) (`account.clear_profile_biography`)
         * [ClearProfileLocation](Methods/account/ClearProfileLocation.md) (`account.clear_profile_location`)
         * [ClearProfileUrl](Methods/account/ClearProfileUrl.md) (`account.clear_profile_url`)
         * [DeleteProfilePicture](Methods/account/DeleteProfilePicture.md) (`account.delete_profile_picture`)
         * [SetProfilePicture](Methods/account/SetProfilePicture.md) (`account.set_profile_picture`)
         * [UpdateProfileBiography](Methods/account/UpdateProfileBiography.md) (`account.update_profile_biography`)
         * [UpdateProfileLocation](Methods/account/UpdateProfileLocation.md) (`account.update_profile_location`)
         * [UpdateProfileName](Methods/account/UpdateProfileName.md) (`account.update_profile_name`)
         * [UpdateProfileUrl](Methods/account/UpdateProfileUrl.md) (`account.update_profile_url`)
      * [Cloud](Methods/cloud/README.md)
         * [GetDocument](Methods/cloud/GetDocument.md) (`cloud.get_document`)
      * [Session](Methods/session/README.md)
         * [CreateSession](Methods/session/CreateSession.md) (`session.create`)
         * [GetSession](Methods/session/GetSession.md) (`session.get`)
         * [AuthenticateUser](Methods/session/AuthenticateUser.md) (`session.authenticate_user`)
         * [Logout](Methods/session/Logout.md) (`session.logout`)
         * [Register](Methods/session/Register.md) (`session.register`)
      * [Help](Methods/help/README.md)
         * [GetCommunityGuidelines](Methods/help/GetCommunityGuidelines.md) (`help.get_community_guidelines`)
         * [GetPrivacyPolicy](Methods/help/GetPrivacyPolicy.md) (`help.get_privacy_policy`)
         * [GetServerInformation](Methods/help/GetServerInformation.md) (`help.get_server_information`)
         * [GetTermsOfService](Methods/help/GetTermsOfService.md) (`help.get_terms_of_service`)
      * [Network](Methods/network/README.md)
         * [GetMe](Methods/network/GetMe.md) (`network.get_me`)

 - [Objects](Objects/README.md)
      * [DisplayPictureSize](Objects/DisplayPictureSize.md)
      * [Document](Objects/Document.md)
      * [HelpDocument](Objects/HelpDocument.md)
      * [Peer](Objects/Peer.md)
      * [Post](Objects/Post.md)
      * [Profile](Objects/Profile.md)
      * [ServerInformation](Objects/ServerInformation.md)
      * [SessionEstablished](Objects/SessionEstablished.md)
      * [Session](Objects/Session.md)
      * [SessionIdentification](Objects/SessionIdentification.md)
      * [TextEntity](Objects/TextEntity.md)

 - [Specifications](Specifications/README.md)
      * [CdnServer](Specifications/CdnServer.md)
      * [ClientHashSpecification](Specifications/ClientHashSpecification.md)
      * [ClientNameSpecification](Specifications/ClientNameSpecification.md)
      * [ClientVersionSpecification](Specifications/ClientVersionSpecification.md)
      * [PasswordSpecification](Specifications/PasswordSpecification.md)
      * [PlatformSpecification](Specifications/PlatformSpecification.md)
      * [SessionChallengeSpecification](Specifications/SessionChallengeSpecification.md)
      * [SessionIdSpecification](Specifications/SessionIdSpecification.md)

 - [Types](Types/README.md)
      * [FileTypes](Types/FileTypes.md)
      * [PeerTypes](Types/PeerTypes.md)
      * [PostTypes](Types/PostTypes.md)
      * [RelationshipTypes](Types/RelationshipTypes.md)
      * [TextEntityTypes](Types/TextEntityTypes.md)
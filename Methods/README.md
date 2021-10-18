# Methods

Socialvoid contains a set of standard methods allowing you to interact
with every functionality of the network, some methods may be more 
restrictive than others and some methods may require users to have
a special flag in order to invoke them such as `Administrator` or 
`Moderator`, etc. 

Incomplete

## Available Methods

 - [Account](account/README.md)
      * [ClearProfileBiography](account/ClearProfileBiography.md) (`account.clear_profile_biography`)
      * [ClearProfileLocation](account/ClearProfileLocation.md) (`account.clear_profile_location`)
      * [ClearProfileUrl](account/ClearProfileUrl.md) (`account.clear_profile_url`)
      * [DeleteProfilePicture](account/DeleteProfilePicture.md) (`account.delete_profile_picture`)
      * [SetProfilePicture](account/SetProfilePicture.md) (`account.set_profile_picture`)
      * [UpdateProfileBiography](account/UpdateProfileBiography.md) (`account.update_profile_biography`)
      * [UpdateProfileLocation](account/UpdateProfileLocation.md) (`account.update_profile_location`)
      * [UpdateProfileName](account/UpdateProfileName.md) (`account.update_profile_name`)
      * [UpdateProfileUrl](account/UpdateProfileUrl.md) (`account.update_profile_url`)
 - [Cloud](cloud/README.md)
      * [GetDocument](cloud/GetDocument.md) (`cloud.get_document`)
 - [Session](session/README.md)
      * [CreateSession](session/CreateSession.md) (`session.create`)
      * [GetSession](session/GetSession.md) (`session.get`)
      * [AuthenticateUser](session/AuthenticateUser.md) (`session.authenticate_user`)
      * [Logout](session/Logout.md) (`session.logout`)
      * [Register](session/Register.md) (`session.register`)
 - [Help](help/README.md)
      * [GetCommunityGuidelines](help/GetCommunityGuidelines.md) (`help.get_community_guidelines`)
      * [GetPrivacyPolicy](help/GetPrivacyPolicy.md) (`help.get_privacy_policy`)
      * [GetServerInformation](help/GetServerInformation.md) (`help.get_server_information`)
      * [GetTermsOfService](help/GetTermsOfService.md) (`help.get_terms_of_service`)
 - [Network](network/README.md)
      * [FollowPeer](network/FollowPeer.md) (`network.follow_peer`)
      * [GetFollowers](network/GetFollowers.md) (`network.get_followers`)
      * [GetFollowing](network/GetFollowing.md) (`network.get_following`)
      * [GetMe](network/GetMe.md) (`network.get_me`)
      * [GetProfile](network/GetProfile.md) (`network.get_profile`)
      * [ResolvePeer](network/ResolvePeer.md) (`network.resolve_peer`)
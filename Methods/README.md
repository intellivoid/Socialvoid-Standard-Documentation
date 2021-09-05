# Methods

Socialvoid contains a set of standard methods allowing you to interact
with every functionality of the network, some methods may be more 
restrictive than others and some methods may require users to have
a special flag in order to invoke them such as `Administrator` or 
`Moderator`, etc. 

Incomplete

## Available Methods

 - [Account](account/README.md)
      * [DeleteProfilePicture](account/DeleteProfilePicture.md) (`account.delete_profile_picture`)
      * [SetProfilePicture](account/SetProfilePicture.md) (`account.set_profile_picture`)
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
      * [GetMe](network/GetMe.md) (`network.get_me`)
# Methods

Socialvoid contains a set of standard methods allowing you to interact
with every functionality of the network, some methods may be more 
restrictive than others and some methods may require users to have
a special flag in order to invoke them such as `Administrator` or 
`Moderator`, etc. 

Incomplete

## Available Methods

1. [Session](session/README.md)
   * [CreateSession](session/CreateSession.md) (`session.create`)
   * [GetSession](session/GetSession.md) (`session.get`)
   * [AuthenticateUser](session/AuthenticateUser.md) (`session.authenticate_user`)
   * [Logout](session/Logout.md) (`session.logout`)
   * [Register](session/Register.md) (`session.register`)
2. [Help](help/README.md)
   * [GetCommunityGuidelines](help/GetCommunityGuidelines.md) (`help.get_community_guidelines`)
   * [GetPrivacyPolicy](help/GetPrivacyPolicy.md) (`help.get_privacy_policy`)
   * [GetTermsOfService](help/GetTermsOfService.md) (`help.get_terms_of_service`)
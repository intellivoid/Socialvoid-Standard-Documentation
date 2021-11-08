# Permission Sets

**This feature is not complete and not fully implemented yet**

Permission sets flags are a way to tell the client what
permissions it currently has with the network, methods will
specify what permissions are required to execute the method.

| Flag                       | Description                                                                                                                                       |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| `PUBLIC`                   | Indicates that the current session currently contains "public" permissions which allows the execution of methods without requiring authentication |
| `MODIFY_ACCOUNT_SETTINGS`  | Indicates that the current session allows the client to modify the account settings of the current authenticated peer                             |
| `MODIFY_SECURITY_SETTINGS` | Indicates that the current session allows the client to modify the security settings of the current authenticated peer                            |
| `USER`                     | Indicates that the current session allows both "public" permissions and user permissions that allows the execution of user methods                |
| `PROXY`                    | Indicates that the current session has limited actions on the network and can only preform actions of a proxy account                             |
| `BOT`                      | Indicates that the current session has limited actions and or special access to special functions that can only be preformed by a bot             |
| `MODERATOR`                | Indicates that the current session allows the authenticated entity to preform moderation actions on the network                                   |
| `ADMINISTRATOR`            | Indicates that the current session allows the authenticated entity to preform administrator actions on the network (Dangerous)                    |
| `SERVER_ADMINISTRATOR`     | Indicates that the current session allows the authenticated entity to preform administrator actions on the server                                 |
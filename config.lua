local config = {
    prefix = "/", --// The command prefix for the bot.
    game = "Vibing Right Now... Leave me alone >:C", --// What should the bot's playing status be?
    verifiedRole = "729753460148404384", --// Role ID in string form, one verified role allowed.
    permReply = true, --// Should the bot reply telling a member they don't have enough permissions if they don't?
    perms = {
      modRole = "729885495353671734", --// Role ID of the Bot Admin role.
      DevRole = "729885674173366333",--// Role ID of the Bot Moderator role.
      TeamRole = "729885754800603208",
      users = {{"562409819311439918","Team"}}, --// User IDs of forced permissions and the type. ("admin" or "mod")
    },
    groupId = 0,
    bindings = {
      --[Rank ID] = "Role ID",
    }
  }
  
  return config
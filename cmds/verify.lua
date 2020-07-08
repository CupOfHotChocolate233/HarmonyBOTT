==
local utils = require("/app/utils.lua")

command.info = {
  Name = "Verify",
  Alias = {},
  Cooldown = 5,
}

command.execute = function(message,args,client)
  local config = require("/app/config.lua")
  local res, body = require("coro-http").request("GET","https://verify.eryn.io/api/user/"..message.author.id)
  if res.code == 200 then
    body = require("json").decode(body)
    if message.member.name:lower() ~= body.robloxUsername:lower() then
      message.member:setNickname(body.robloxUsername)
    end
    if config.verifiedRole ~= "" and message.guild.roles:get(config.verifiedRole) ~= nil and message.member.roles:get(config.verifiedRole) == nil then
      message.member:addRole(config.verifiedRole)
    end
    return {success = true, msg = "Welcome to the server, **"..body.robloxUsername.."**! I hope you have a wonderful time in The Penguin Studio! "}
  elseif res.code == 404 then
    return {success = false, msg = "Oh Hello! :smile: It looks like your new to the Server! To verify, click on this link <https://verify.eryn.io> If you need more help then go to #verify-instructions"}
  else
    return {success = false, msg = ":thinking: Hmmmmm, We are having a problem of checking the  verification registry. Try again later. If not please contact a developer or mod if problems continue...`[CODE: "..res.code.."]`"}
  end
end

return command
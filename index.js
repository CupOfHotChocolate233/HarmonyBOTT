const Discord = require('discord.js');
const bot = new Discord.Client();

bot.on('ready', ()=>{
    console.log('system online.....')
    bot.user.setActivity('Vibing right now... Levae me alone >:C')
    bot.user.setStatus('idle')
 
});

bot.login(process.env.token);

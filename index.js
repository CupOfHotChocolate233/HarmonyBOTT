const Discord = require('discord.js');
const bot = new Discord.Client();

bot.on('ready', ()=>{
    console.log('system online.....')

    bot.user.setStatus('idle')
    bot.user.setGame('yes')
});

bot.login(process.env.token);
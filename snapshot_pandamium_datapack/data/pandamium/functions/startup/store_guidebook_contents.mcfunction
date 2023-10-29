#> WHEN UPDATING:
# - Increment version index; 
# - Set a suitable version name
# - Set the current date (DD/MM/YYY)
# then check that they're formatted correctly on the last page.

data modify storage pandamium:global guidebook.version_index set value 103
data modify storage pandamium:global guidebook.version_name set value '2.3.2'
data modify storage pandamium:global guidebook.date_updated set value '29/10/2023'

# book item
data modify storage pandamium:global guidebook.data set value {\
    pages: [\
        '[{"text":"\\n\\n\\n\\n           -=+=-\\n     Welcome to the\\n       ","color":"dark_blue"},{"text":"Pandamium","bold":true},"\\n    Snapshot Server\\n           -=+=-"]', \
\
        '["Contents:\\n-- ",{"text":"Introduction","bold":true,"color":"dark_blue","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 4","bold":true}]},"clickEvent":{"action":"change_page","value":"4"}},"\\n-- ",{"text":"Rules","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 5","bold":true}]},"clickEvent":{"action":"change_page","value":"5"}},"\\n-- ",{"text":"Commands","bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 12","bold":true}]},"clickEvent":{"action":"change_page","value":"12"}},"\\n-- -- ",{"text":"Homes","color":"gold","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 13","bold":true}]},"clickEvent":{"action":"change_page","value":"13"}},"\\n-- -- ",{"text":"TPA","color":"gold","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 14","bold":true}]},"clickEvent":{"action":"change_page","value":"14"}},"\\n-- ",{"text":"Donating","bold":true,"color":"dark_purple","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 20","bold":true}]},"clickEvent":{"action":"change_page","value":"20"}},"\\n-- -- ",{"text":"Commands","color":"dark_purple","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 22","bold":true}]},"clickEvent":{"action":"change_page","value":"22"}},"\\n-- ",{"text":"Voting & Rewards","color":"dark_aqua","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 25","bold":true}]},"clickEvent":{"action":"change_page","value":"25"}},"\\n-- -- ",{"text":"Ranks","color":"dark_aqua","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 27","bold":true}]},"clickEvent":{"action":"change_page","value":"27"}},"\\n-- ",{"text":"Getting Started","bold":true,"color":"#00A86D","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 29","bold":true}]},"clickEvent":{"action":"change_page","value":"29"}},"\\n-- ",{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},"\\n\\n",{"text":"Info and FAQs →","clickEvent":{"action":"change_page","value":"3"}}]', \
\
        '["-- ",{"text":"Info","color":"dark_gray","bold":true,"hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 31","bold":true}]},"clickEvent":{"action":"change_page","value":"31"}},"\\n-- -- ",{"text":"Custom Recipes","color":"dark_gray","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 31","bold":true}]},"clickEvent":{"action":"change_page","value":"31"}},"\\n-- -- ",{"text":"The End","color":"dark_gray","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 32","bold":true}]},"clickEvent":{"action":"change_page","value":"32"}},"\\n-- -- ",{"text":"More Mob Heads","color":"dark_gray","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 33","bold":true}]},"clickEvent":{"action":"change_page","value":"33"}},"\\n-- -- ",{"text":"Advancements","color":"dark_gray","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 34","bold":true}]},"clickEvent":{"action":"change_page","value":"34"}},"\\n-- ",{"text":"FAQs","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 35","bold":true}]},"clickEvent":{"action":"change_page","value":"35"}},"\\n-- -- ",{"text":"Towns","color":"dark_green","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 35","bold":true}]},"clickEvent":{"action":"change_page","value":"35"}},"\\n-- -- ",{"text":"Changed My IGN","color":"dark_green","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 36","bold":true}]},"clickEvent":{"action":"change_page","value":"36"}},"\\n-- -- ",{"text":"Litematica","color":"dark_green","hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 37","bold":true}]},"clickEvent":{"action":"change_page","value":"37"}},"\\n-- ",{"text":"Guidebook Info","color":"dark_gray","bold":true,"hoverEvent":{"action":"show_text","value":["Click to go to ",{"text":"Page 38","bold":true}]},"clickEvent":{"action":"change_page","value":"38"}}]', \
\
        '["",{"text":"      Introduction\\n===================\\n","color":"dark_blue"},"This is a ",{"text":"vanilla survival server","color":"dark_aqua"}," with a custom datapack for ",{"text":"homes, tpa, & more","color":"dark_aqua"},"! This guidebook gives you basic information about the server such as ",{"text":"rules, commands and answers to FAQs.","color":"dark_aqua"},{"text":" For more help, contact a staff member!","color":"dark_gray"}]', \
\
        '["",{"text":"           Rules\\n===================","color":"dark_red"},"\\n• No hacking, cheating, or x-raying to get an unfair advantage over others. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":["Client-side mini-map mods are\\nallowed, ",{"text":"unless","bold":true}," they allow you\\nto see the location of ores or\\nstructures underground."]}},"\\n\\n• All forms of griefing, raiding, and stealing are forbidden.\\n\\n• Killing others is allowed, just not repeatedly. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"Especially not again after they\\nexplicitly stated that they do\\nwant to fight.\\n\\nAlso, be mindful that some\\nplayers may have Keep-Inventory\\ndisabled, so killing them\\nwithout their permission may\\nlose them lots of progress."}}]', \
\
        '["• Do not exploit bugs or glitches introduced in snapshots that give you an unfair advantage or hinder others\' gameplay;\\n\\nespecially, but not limited to, item duplication, crashing the server, or intentionally creating lots of lag."]', \
\
        '["• Do not spam, use excessive capital letters or advertise in chat. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"\\"Advertisement\\" is the promotion\\nof your/others\' Minecraft\\nservers, social media accounts,\\nor websites."}},"\\n\\n• Use English in the public chat; staff cannot moderate every language.\\n\\n• Swearing is allowed, but do not do it in an excessive, rude or derogatory way."]', \
\
        '["• Arguments about potentially controversial topics unrelated to Minecraft or Pandamium should be avoided. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"These topics aren\'t completely\\nforbidden, but can easily lead\\nto fights and insults, which is\\nwhy they should be kept to a\\nminimum."}},"\\n\\n• Do not build, write, or perform anything offensive, hurtful, or inappropriate."]', \
\
        '["• Do not use auto clickers, auto reconnect mods or similar tools to get around the AFK timeout.\\n\\n",{"text":"Metarules:","underlined":true},"\\n\\n• Punishments can be made appropriately by staff, depending on the rule violation."]', \
\
        '["• Claiming to break or joking about breaking the rules may be enough to receive punishment.\\n\\n• Staff are not obliged to return items lost due to technical problems. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"This can include items lost due\\nto bugs, glitches, resets etc.\\n\\nItems lost to theft/raids may\\nbe able to be recovered for you\\nby staff."}},"\\n\\n• Don\'t use alts to get around punishments."]', \
\
        '[{"text":"\\n\\nIf you see someone breaking the rules, or you need to appeal a punishment, contact a staff member by opening a ticket on our ","color":"dark_gray"},{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}," server in the ",{"text":"#support","color":"dark_aqua"}," channel."]', \
\
        '["",{"text":"        Commands\\n===================\\n","color":"gold"},"As this is a vanilla server, we cannot add custom commands so, instead, we use triggers.\\n\\n",{"text":"/trigger ","color":"gray"},{"text":"<trigger>","color":"gold"},{"text":"\\n\\n            OR\\n\\n","color":"gray"},{"text":"/trigger ","color":"gray"},{"text":"<trigger>","color":"gold"},{"text":"\\n     set ","color":"gray"},{"text":"<value>","color":"dark_aqua"}]', \
\
        '["",{"text":"homes","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" homes","color":"aqua"}]}},"\\n> Lists your homes.\\n\\n",[{"text":"sethome","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[[{"text":"/trigger","color":"gray"},{"text":" sethome","color":"aqua"}],"\\n",[{"text":"/trigger","color":"gray"},{"text":" sethome","color":"aqua"}," set ",{"text":"<home>","color":"yellow"}]]}},{"text":" set ","bold":false,"color":"dark_gray"},{"text":"<1→25>","bold":false,"color":"dark_aqua"}],"\\n> Creates or replaces a home.\\n\\n",[{"text":"home","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[[{"text":"/trigger","color":"gray"},{"text":" home","color":"aqua"}],"\\n",[{"text":"/trigger","color":"gray"},{"text":" home","color":"aqua"}," set ",{"text":"<home>","color":"yellow"}]]}},{"text":" set ","bold":false,"color":"dark_gray"},{"text":"<1→25>","bold":false,"color":"dark_aqua"}],"\\n> Teleports you to a home.\\n\\n",[{"text":"delhome","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[[{"text":"/trigger","color":"gray"},{"text":" delhome","color":"aqua"}],"\\n",[{"text":"/trigger","color":"gray"},{"text":" delhome","color":"aqua"}," set ",{"text":"<home>","color":"yellow"}]]}},{"text":" set ","bold":false,"color":"dark_gray"},{"text":"<1→25>","bold":false,"color":"dark_aqua"}],"\\n> Removes a home."]', \
\
        '["",{"text":"tpa","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" tpa","color":"aqua"},"\\n",{"text":"/trigger","color":"gray"},{"text":" tpa","color":"aqua"}," set ",{"text":"<ID>","color":"yellow"}]}},"\\n> Opens a list of all online players with buttons to send TPA requests to them.\\n\\nIt also shows any sent and received requests.\\n\\nYou can cancel, deny or accept by clicking the buttons in chat."]', \
\
        '["",{"text":"vote","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" vote","color":"aqua"}]}},"\\n> Displays the voting links and your votes.\\n\\n",{"text":"rewards_shop","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" rewards_shop","color":"aqua"}]}},"\\n> Displays the rewards shop. You can spend your reward credits there!\\n\\n",{"text":"gift","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[[{"text":"/trigger","color":"gray"},{"text":" gift","color":"aqua"}],"\\n",[{"text":"/trigger","color":"gray"},{"text":" gift","color":"aqua"}," set ",{"text":"<ID>","color":"yellow"}]]}},"\\n> Sends one of your reward credits to a chosen player."]', \
\
        '["",{"text":"playtime","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" playtime","color":"aqua"}]}},"\\n> Shows you your playtime. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"Shows you your total playtime, \\nplaytime this month, and how\\nlong you have been online for."}},"\\n\\n",{"text":"leaderboards","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" leaderboards","color":"aqua"}]}},"\\n> Shows you the top players in the playtime, voting, and parkour leaderboards.\\n\\n",{"text":"discord","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" discord","color":"aqua"}]}},"\\n> Gives you the link to our Discord server."]', \
\
        '["",{"text":"options","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" options","color":"aqua"}]}},"\\n> Lets you toggle personal settings such as ",{"text":"Keep-Inventory","color":"dark_aqua"},", ",{"text":"Phantom Spawning","color":"dark_aqua"},", and whether you receive ",{"text":"TPA Requests","color":"dark_aqua"},".\\n\\n",{"text":"world_info","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" world_info","color":"aqua"}]}},"\\n> Shows information about the players and loaded entities in each dimension."]', \
\
        '["",{"text":"spawn","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[[{"text":"/trigger","color":"gray"},{"text":" spawn","color":"aqua"}],"\\n",[{"text":"/trigger","color":"gray"},{"text":" spawn","color":"aqua"}," set ",{"text":"2","color":"yellow"},{"text":" (Nether Spawn)","color":"dark_gray"}],"\\n",[{"text":"/trigger","color":"gray"},{"text":" spawn","color":"aqua"}," set ",{"text":"3","color":"yellow"},{"text":" (End Platform)","color":"dark_gray"}]]}},"\\n> Sends you to spawn.\\n\\n",{"text":"rtp","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" rtp","color":"aqua"}]}},"\\n> Randomly teleports you in RTP range. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":["The RTP Range is from \\n",{"text":"-25000 ~ -25000","color":"gray"}," to ",{"text":"25000 ~ 25000","color":"gray"},"\\nin the overworld."]}},"\\n\\n",{"text":"enderman_farm","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" enderman_farm","color":"aqua"}]}},"\\n> Teleports you to the public enderman farm.\\n\\n",{"text":"respawn","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" respawn","color":"aqua"}]}},"\\n> Silently kills you. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":["Since keep-inventory is enabled,\\nthis is useful for quickly dying\\nto get back to your spawn point."]}}]', \
\
        '["",{"text":"parkour","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" parkour","color":"aqua"}]}},"\\n> Teleports you to parkour courses.\\n\\n",{"text":"clear_inventory","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" clear_inventory","color":"aqua"}]}},"\\n> Permanently clears your inventory.\\n\\n",{"text":"sit","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" sit","color":"aqua"}]}},"\\n> Makes you sit on the ground where you are standing."]', \
\
        '["",{"text":"         Donating\\n===================\\n\\n","color":"dark_purple"},"If you like this server and want to ",{"text":"support us","color":"dark_aqua"},", you can help ",{"text":"improve the hardware","color":"dark_aqua"}," it is running on by donating! In return, you will get access to ",{"text":"many exclusive perks","color":"dark_aqua"}," in Minecraft and on our Discord server as a thank you :)"]', \
\
        '["  You can donate on\\n       ",{"text":"[Patreon]","bold":true,"color":"#FF424D","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"#FF424D"},{"text":"Donate","bold":true}]},"clickEvent":{"action":"open_url","value":"https://www.patreon.com/pandamium"}},"\\n\\nYou will get ",{"text":"1 month","color":"dark_aqua"}," of the donator rank for every ",{"text":"$5","color":"dark_green","underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"$5 (USD) before VAT","color":"dark_green"}}}," you donate!\\n\\nDonating gives you a ",{"text":"dark purple","color":"dark_purple"}," name, the Donator prefix, access to ",{"text":"all 25 home slots","color":"dark_aqua"}," and a number of extra commands, too! ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":["Donators can choose to use the\\nDonator prefix, or keep their\\nrespective rank prefix with\\n",{"text":"/trigger ","color":"gray"},{"text":"options","color":"aqua"},"!"]}}]', \
\
        '["",{"text":"• Commands","bold":true,"color":"dark_purple"},{"text":" (/trigger)","color":"dark_gray","font":"uniform"},"\\n\\n",{"text":"particles","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" particles","color":"aqua"}]}},"\\n> Pick a particle trail or emote from this list.\\n\\n",{"text":"pose","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" pose","color":"aqua"}]}},"\\n> Change the pose of an armour stand and modify its attributes.\\n\\n",{"text":"frame_visibility","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" frame_visibility","color":"aqua"}]}},"\\n> Make an item frame\'s frame invisibile."]', \
\
        '["",{"text":"hat","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" hat","color":"aqua"}]}},"\\n> Puts the item you are holding onto your head.\\n\\n",{"text":"item_font","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" item_font","color":"aqua"}]}},"\\n> Lets you modify the font or colour of the name of the item you are holding, and give it up to 4 lines of lore."]', \
\
        '["",{"text":"sign_font","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" sign_font","color":"aqua"}]}},"\\n> Lets you edit the font or colour of each line of text on the sign you are looking at.\\n\\n",{"text":"flair","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"/trigger","color":"gray"},{"text":" flair","color":"aqua"}]}},"\\n> Lets you choose an emoji to place next to your username for added flair."]', \
\
        '["",{"text":"  Voting and Rewards\\n===================\\n\\n","color":"dark_aqua"},"If you want to ",{"text":"support Pandamium","color":"dark_aqua"}," without spending money, you can vote for us at the websites listed when you run ",{"text":"/trigger vote","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"blue"},{"text":"Vote for Pandamium","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger vote"}},". In return, you will get access to more ",{"text":"perks and ranks","color":"dark_aqua"},"!"]', \
\
        '["You can vote up to ",{"text":"4 times per day","color":"dark_aqua"}," (once per link).\\n\\nFor every vote, you will get ",{"text":"1 reward credit","color":"dark_aqua"}," to spend in the rewards shop. ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"Voting during the first week of\\neach month will reward you with\\n2 vote credits."}},"\\n\\nYour total votes are shown in the tab-list and are required for you to rank up."]', \
\
        '["",{"text":"• Ranks\\n\\n","bold":true},"To rank up, you must play on this server for a certain number of hours and vote the same number of times.\\n\\nYou start as a ",{"text":"Guest","color":"gray"}," and have access to 2 homes. Rank up to unlock ",{"text":"more homes","color":"dark_aqua"}," and ",{"text":"fancy name colours & prefixes","color":"dark_aqua"},"!"]', \
\
        '["         ",[{"text":"Guest","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":"This is the default rank!"}},{"text":" ℹ","bold":false,"color":"blue"}],"\\n• 2 Homes","\\n         ",[{"text":"Player","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Play for 5 hours and vote 5\\ntimes to unlock this rank!"}},{"text":" ℹ","bold":false,"color":"blue"}],"\\n• 3 Homes","\\n         ",[{"text":"Member","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":"Play for 25 hours and vote 25\\ntimes to unlock this rank!"}},{"text":" ℹ","bold":false,"color":"blue"}],"\\n• 5 Homes","\\n          ",[{"text":"Elder","color":"#09fafa","bold":true,"hoverEvent":{"action":"show_text","value":"Play for 125 hours and vote 125\\ntimes to unlock this rank!"}},{"text":" ℹ","bold":false,"color":"blue"}],"\\n• 10 Homes","\\n        ",[{"text":"Veteran","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":"Play for 500 hours and vote 500\\ntimes to unlock this rank!"}},{"text":" ℹ","bold":false,"color":"blue"}],"\\n• 15 Homes","\\n           ",[{"text":"Elite","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":"Play for 2500 hours and vote\\n2500 times to unlock this rank!\\nVery few people will ever reach\\nthis rank!"}},{"text":" ℹ","bold":false,"color":"blue"}],"\\n• 20 Homes","\\n    ",[{"text":"","bold":true},{"text":"Donator","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"Click to go to page 20 and learn how to donate"},"clickEvent":{"action":"change_page","value":"20"}},{"text":" / ","bold":false},{"text":"VIP","color":"dark_blue","hoverEvent":{"action":"show_text","value":"This is a special rank given out\\nto a select few people, such as\\nthose who have helped the\\nservers a lot, and Mojang devs."}}],"\\n• 25 Homes"]', \
\
        '["",{"text":"     Getting Started\\n===================\\n\\n","color":"#00A86D"},"There is a ",{"text":"Random Teleporter","color":"dark_aqua"}," at spawn which ranges from ",{"text":"-25000 to 25000","color":"dark_aqua"}," in the X and Z axes. Step into it to get started!\\n\\nWe recommend that you ",{"text":"build any long term bases outside of the RTP range.","color":"dark_aqua"}]', \
\
        '["The further from spawn you go, the less likely someone will stumble upon it and potentially grief it, raid it or steal from you.\\n\\nThere is access to the ",{"text":"nether roof","color":"dark_aqua"}," through the portal at spawn - you can use this to get far out pretty quickly."]', \
\
        '["",{"text":"           Info\\n===================\\n","color":"dark_gray"},{"text":"• Custom Recipes","bold":true},"\\n\\nThere are custom recipes on this server to make crafting and building easier, as well as recipes for some items that are normally unobtainable. For the ",{"text":"full list","color":"dark_aqua"}," visit our ",{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}," server!"]', \
\
        '["",{"text":"• The End","bold":true},"\\n\\nThe End ",{"text":"resets","color":"dark_aqua"}," at the beginning of every month, including the Ender Dragon boss fight. This gives more people a chance to raid end cities and get dragon eggs.\\nThe first Dragon Fight of each month is also ",{"text":"enhanced","color":"dark_aqua"}," to add an extra challenge! ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"The details of each enhanced\\ndragon fight may change from\\nmonth to month.\\n\\nThe timing of the reset is\\nsubject to the availability of\\nthe server admins."}}]', \
\
        '["",{"text":"• More Mob Heads","bold":true},"\\n\\nIf any mob on this server is killed by a ",{"text":"charged creeper","color":"dark_aqua"},", it will drop a Custom Mob Head. Mobs with ",{"text":"multiple variants","color":"dark_aqua"}," will drop a unique head for each one. For the full list, previews of heads, and answers to FAQs, visit our ",{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}," server."]', \
\
        '["",{"text":"• Advancements","bold":true},"\\n\\nThere are many ",{"text":"custom advancements","color":"dark_aqua"}," added to the vanilla advancement trees which are inspired by ",{"text":"legacy achievements","color":"dark_aqua"},". They should add some fun challenges to the game, and bring nostalgia to those who have played Minecraft for a long time!"]', \
\
        '["",{"text":"           FAQs\\n===================\\n","color":"dark_green"},{"text":"• Towns","bold":true,"color":"dark_green"},"\\nIt is up to the towns to decide who they let in. Often you can apply in their channels on our ",{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}," server.\\nIf you want to ",{"text":"create your own","color":"dark_aqua"},", you must have at least 6 members, then ",{"text":"open a ticket","color":"dark_aqua"}," to let us know!"]', \
\
        '["",{"text":"• \\"I changed my username, and I lost all my data!\\"","color":"dark_green"},"\\nIf you have changed your IGN and lost your data, let a staff member know on ",{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}," by opening a ticket in ",{"text":"#support","color":"dark_aqua"},{"text":".\\nThis happens as we use vanilla scoreboards which do not automatically transfer your data.","color":"dark_gray"}]', \
\
        '["",{"text":"• Schematic / Auto Building Mods","bold":true,"color":"dark_green"},"\\n\\nMods which allow you to place blocks in impossible positions or automate building give unfair advantages so are ",{"text":"not allowed","color":"#FF0000","underlined":true},". However, you may use their visual features such as displaying ",{"text":"holograms","color":"dark_aqua"}," of schematics."]', \
\
        '[{"text":"Guidebook Version:\\n    ","color":"dark_gray"},{"storage":"pandamium:global","nbt":"guidebook.version_name","bold":true},"\\nLast Updated:\\n    ",{"storage":"pandamium:global","nbt":"guidebook.date_updated"},"\\n\\nContributors:\\n    ",{"text":"MaroonAngel","hoverEvent":{"action":"show_text","value":{"text":"beep"}}},"\\n    ",{"text":"DorkOrc","hoverEvent":{"action":"show_text","value":{"text":"boop"}}},"\\n    ",{"text":"KittyAcel","hoverEvent":{"action":"show_text","value":{"text":"bonk"}}},"\\n    ",{"text":"Mandalay","hoverEvent":{"action":"show_text","value":{"text":"SIUUUUU"}}},"\\n    ",{"text":"L0Lluc007","hoverEvent":{"action":"show_text","value":{"text":"PAFF"}}},"\\n\\nWe hope you enjoy your time here ❤"]'\
    ], \
    display: {\
        Name: '[{"text":"","bold":true,"italic":false},{"text":"P","color":"#5454FB"},{"text":"a","color":"#546FFB"},{"text":"n","color":"#548BFB"},{"text":"d","color":"#54A7FB"},{"text":"a","color":"#54C3FB"},{"text":"m","color":"#54DFFB"},{"text":"i","color":"#54FBFB"},{"text":"u","color":"#54FBDF"},{"text":"m","color":"#54FBC3"},{"text":" G","color":"#54FB8B"},{"text":"u","color":"#54FB6F"},{"text":"i","color":"#54FB54"},{"text":"d","color":"#46ED46"},{"text":"e","color":"#38DF38"},{"text":"b","color":"#2AD12A"},{"text":"o","color":"#1CC31C"},{"text":"o","color":"#0EB50E"},{"text":"k","color":"#00A800"}]', \
        Lore: [\
            '{"text":"A handy guide to getting started on","color":"aqua","italic":false}', \
            '[{"text":"the ","color":"aqua","italic":false},{"text":"Pandamium Snapshot Server","bold":true}]', \
            '{"text":"Rules, commands, FAQs, and more!","color":"green","italic":false}'\
        ]\
    }, \
    generation: 1, \
    title: "Pandamium Guidebook", \
    author: "The Staff Team", \
    HideFlags: 63, \
    RepairCost: 2147483647, \
    pandamium: {\
        guidebook: {\
            replace: 1b, \
            version: -1\
        }, \
        font: {\
            cannot_modify: {\
                all: 1b\
            }\
        }\
    }\
}

# resolve and store book
data modify storage pandamium:global guidebook.data.pandamium.guidebook.version set from storage pandamium:global guidebook.version_index
execute in pandamium:staff_world run data modify block 4 0 0 Book.tag set from storage pandamium:global guidebook.data
execute in pandamium:staff_world run data modify block 4 0 0 Book.tag.resolved set value 0b
# ^^ automatically resolves the each page, and sets `resolved` to `1b` ^^
execute in pandamium:staff_world run data modify storage pandamium:global guidebook.data set from block 4 0 0 Book.tag

# store version index as score
execute store result score <guidebook_version_index> global run data get storage pandamium:global guidebook.version_index

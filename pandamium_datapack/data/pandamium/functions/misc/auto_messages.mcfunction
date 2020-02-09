execute if score <auto_message> variable matches 0 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Click here to join our official ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" server and always stay up to date: ","color":"green"},{"text":"discord.pandamium.eu","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}]

execute if score <auto_message> variable matches 1 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"Use ","color":"green"},{"text":"/trigger vote","color":"aqua"},{"text":" to get ","color":"green"},{"text":"rewards","color":"aqua"},{"text":", ","color":"green"},{"text":"rank up","color":"aqua"},{"text":" and ","color":"green"},{"text":"support","color":"aqua"},{"text":" the server!","color":"green"}]

execute if score <auto_message> variable matches 2 run tellraw @a [{"text":"[Info] ","color":"blue"},{"text":"You can ","color":"green"},{"text":"donate","color":"aqua"},{"text":" to get access to many ","color":"green"},{"text":"exclusive perks","color":"aqua"},{"text":" and to ","color":"green"},{"text":"support","color":"aqua"},{"text":" Pandamium. Check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for more info.","color":"green"}]

scoreboard players add <auto_message> variable 1
execute if score <auto_message> variable matches 3.. run scoreboard players set <auto_message> variable 0

schedule function pandamium:misc/auto_messages 180s

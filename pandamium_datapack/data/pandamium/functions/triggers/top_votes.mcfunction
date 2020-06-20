execute unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":" Only Donators can use this trigger! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s gameplay_perms matches 3.. run scoreboard objectives setdisplay sidebar votes
execute if score @s gameplay_perms matches 3.. run scoreboard players set <sidebar> variable 1
execute if score @s gameplay_perms matches 3.. run scoreboard players set <sidebar_timer> variable 600
execute if score @s gameplay_perms matches 3.. run tellraw @a [{"text":"[Info] ","color":"blue"},{"selector":"@s"},{"text":" toggled ","color":"green"},{"text":"top votes","color":"aqua"},{"text":" for ","color":"green"},{"text":"15 seconds!","color":"aqua"}]

scoreboard players reset @s top_votes
scoreboard players enable @s top_votes

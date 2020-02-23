execute unless score @s gameplay_perms matches 3.. run tellraw @s [{"text":" Only Donators can use this trigger! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]
execute unless score @s gameplay_perms matches 3.. run scoreboard players reset @s particles

execute if score @s particles matches 6.. run scoreboard players reset @s particles

scoreboard players enable @s particles

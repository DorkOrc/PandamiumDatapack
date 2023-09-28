tag @s add source

tellraw @s [{"text":"[Unban]","color":"dark_red"},{"text":" This trigger is disabled!","color":"red"}]
#function pandamium:triggers/unban/logic

tag @s remove source
scoreboard players reset @s unban
scoreboard players enable @s unban

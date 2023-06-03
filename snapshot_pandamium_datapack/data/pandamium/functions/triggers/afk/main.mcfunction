execute if score @s idle.time matches 1073741824.. run tellraw @s [{"text":"[AFK]","color":"dark_red"},{"text":" You are already considered AFK! Move your mouse around to start regaining playtime.","color":"red"}]
execute unless score @s idle.time matches 1073741824.. run function pandamium:triggers/afk/set_afk

scoreboard players reset @s afk
scoreboard players enable @s afk

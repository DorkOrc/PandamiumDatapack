execute if score @s afk.time matches 1.. run tellraw @s [{"text":"[AFK]","color":"dark_red"},{"text":" You are already considered AFK! Move your mouse around to start regaining playtime.","color":"red"}]
execute unless score @s afk.time matches 1.. run tellraw @s [{"text":"[AFK]","color":"dark_green"},[{"text":" You are now considered ","color":"green"},{"text":"AFK","color":"aqua"},"!"]]
execute unless score @s afk.time matches 1.. run scoreboard players set @s afk.time 1

scoreboard players reset @s afk
scoreboard players enable @s afk

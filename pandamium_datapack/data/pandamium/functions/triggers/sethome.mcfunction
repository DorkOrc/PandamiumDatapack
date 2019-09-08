execute unless data entity @s {Dimension:0} run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You can only set your home in the overworld!","color":"red"}]

execute if data entity @s {Dimension:0} run function pandamium:home/set

scoreboard players reset @s sethome
scoreboard players enable @s sethome
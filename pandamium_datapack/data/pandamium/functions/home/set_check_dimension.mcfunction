execute if data entity @s {Dimension:"minecraft:overworld"} run function pandamium:home/set_run

execute unless data entity @s {Dimension:"minecraft:overworld"} run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You can only set your home in the overworld!","color":"red"}]

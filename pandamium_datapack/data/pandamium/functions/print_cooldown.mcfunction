scoreboard players operation @s temp_1 = @s home_cooldown
scoreboard players set @s temp_2 20
scoreboard players operation @s temp_1 /= @s temp_2
tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Your home cooldown is ","color":"red"},{"score":{"name":"@s","objective":"temp_1"},"color":"dark_red"},{"text":"s!","color":"red"}]

scoreboard players operation @s temp_3 = @s tpa_cooldown
scoreboard players set @s temp_4 20
scoreboard players operation @s temp_3 /= @s temp_4
tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Your TPA cooldown is ","color":"red"},{"score":{"name":"@s","objective":"temp_3"},"color":"dark_red"},{"text":"s!","color":"red"}]
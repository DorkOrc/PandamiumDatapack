scoreboard players operation @s temp_1 = @s home_cooldown
scoreboard players set @s temp_2 20
scoreboard players operation @s temp_1 /= @s temp_2
tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Your cooldown is ","color":"red"},{"score":{"name":"@s","objective":"temp_1"},"color":"dark_red"},{"text":"s!","color":"red"}]
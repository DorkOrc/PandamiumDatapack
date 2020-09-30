scoreboard players operation @s temp_1 = @s tpa_cooldown
scoreboard players set @s temp_2 20
scoreboard players operation @s temp_1 /= @s temp_2
tellraw @s [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," Your TPA cooldown is ",{"score":{"name":"@s","objective":"temp_1"},"color":"dark_red"}," seconds."]

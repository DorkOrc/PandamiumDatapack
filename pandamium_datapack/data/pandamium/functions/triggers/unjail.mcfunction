scoreboard players set @s temp_1 0
execute at @a if score @s unjail = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Unjail]", "color":"dark_red"}," No player found with that ID."]

execute at @a if score @s unjail = @p id if score @p jailed matches 1.. run function pandamium:misc/get_unjailed

scoreboard players reset @s unjail
scoreboard players enable @s unjail

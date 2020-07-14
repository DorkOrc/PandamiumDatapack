execute if score @s jail matches 2.. at @a if score @s jail = @p id unless score @p jailed matches 1.. run function pandamium:misc/get_jailed

scoreboard players set @s temp_1 0
execute at @a if score @s jail = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Jail]", "color":"dark_red"}," No player found with that ID."]

scoreboard players reset @s jail
scoreboard players enable @s jail

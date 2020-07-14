execute at @a if score @s kick = @p id run kick @p You were kicked by a moderator!

scoreboard players set @s temp_1 0
execute at @a if score @s kick = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Kick]", "color":"dark_red"}," No player found with that ID."]

scoreboard players reset @s kick
scoreboard players enable @s kick

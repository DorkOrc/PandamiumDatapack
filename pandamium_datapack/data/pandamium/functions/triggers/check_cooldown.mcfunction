execute unless score @s home_cooldown matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_green"},{"text":" You do not have a cooldown!","color":"green"}]

execute if score @s home_cooldown matches 1.. run scoreboard players operation @s temp_1 = @s home_cooldown
execute if score @s home_cooldown matches 1.. run scoreboard players set @s temp_2 20
execute if score @s home_cooldown matches 1.. run scoreboard players operation @s temp_1 /= @s temp_2
execute if score @s home_cooldown matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Your home cooldown is ","color":"red"},{"score":{"name":"@s","objective":"temp_1"},"color":"dark_red"},{"text":"s!","color":"red"}]

execute unless score @s tpa_cooldown matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_green"},{"text":" You do not have a cooldown!","color":"green"}]

execute if score @s tpa_cooldown matches 1.. run scoreboard players operation @s temp_1 = @s tpa_cooldown
execute if score @s tpa_cooldown matches 1.. run scoreboard players set @s temp_2 20
execute if score @s tpa_cooldown matches 1.. run scoreboard players operation @s temp_1 /= @s temp_2
execute if score @s tpa_cooldown matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Your TPA cooldown is ","color":"red"},{"score":{"name":"@s","objective":"temp_1"},"color":"dark_red"},{"text":"s!","color":"red"}]

scoreboard players reset @s show_cooldown
scoreboard players enable @s show_cooldown

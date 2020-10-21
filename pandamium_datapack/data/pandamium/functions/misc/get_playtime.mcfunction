scoreboard players operation @s temp_1 = @p playtime_ticks
scoreboard players set @s temp_3 72000
scoreboard players operation @s temp_1 /= @s temp_3

scoreboard players operation @s temp_2 = @p playtime_ticks
scoreboard players set @s temp_3 1200
scoreboard players operation @s temp_2 /= @s temp_3
scoreboard players set @s temp_3 60
scoreboard players operation @s temp_2 %= @s temp_3

execute unless score @s temp_2 matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Playtime]","color":"dark_green"}," ",{"selector":"@p"}," has ",[{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"}," hours"]," and ",[{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"}," minutes"],"."]
execute if score @s temp_2 matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Playtime]","color":"dark_green"}," ",{"selector":"@p"}," has ",[{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"}," hours"],"."]

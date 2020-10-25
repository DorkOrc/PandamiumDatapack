scoreboard players operation @s temp_1 = @p playtime_ticks
scoreboard players set @s temp_3 72000
scoreboard players operation @s temp_1 /= @s temp_3

scoreboard players operation @s temp_2 = @p playtime_ticks
scoreboard players set @s temp_3 1200
scoreboard players operation @s temp_2 /= @s temp_3
scoreboard players set @s temp_3 60
scoreboard players operation @s temp_2 %= @s temp_3

tellraw @s [{"text":"","color":"green"},{"text":"[Playtime]","color":"dark_green"}," ",{"selector":"@p"}," has ",[{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"}," hour(s)"]," and ",[{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"}," minute(s)"],"."]

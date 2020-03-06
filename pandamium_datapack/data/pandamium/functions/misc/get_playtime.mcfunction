scoreboard players operation @s temp_1 = @s playtime_ticks
scoreboard players set @s temp_3 72000
scoreboard players operation @s temp_1 /= @s temp_3

scoreboard players operation @s temp_2 = @s playtime_ticks
scoreboard players set @s temp_3 1200
scoreboard players operation @s temp_2 /= @s temp_3
scoreboard players set @s temp_3 60
scoreboard players operation @s temp_2 %= @s temp_3

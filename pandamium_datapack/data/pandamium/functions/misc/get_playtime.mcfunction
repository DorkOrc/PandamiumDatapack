scoreboard players operation @s temp_1 = @p playtime_ticks
scoreboard players set @s temp_3 72000
scoreboard players operation @s temp_1 /= @s temp_3

scoreboard players operation @s temp_2 = @p playtime_ticks
scoreboard players set @s temp_3 1200
scoreboard players operation @s temp_2 /= @s temp_3
scoreboard players set @s temp_3 60
scoreboard players operation @s temp_2 %= @s temp_3

tellraw @s [{"selector":"@p"},{"text":"'s playtime: ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" minutes","color":"green"}]

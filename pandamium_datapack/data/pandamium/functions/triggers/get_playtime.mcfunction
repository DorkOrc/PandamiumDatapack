#execute at @a if score @s get_playtime = @p id run scoreboard players operation @s 

scoreboard players operation @s temp_1 = @s playtime_ticks
scoreboard players set @s temp_3 72000
scoreboard players operation @s temp_1 /= @s temp_3

scoreboard players operation @s temp_2 = @s playtime_ticks
scoreboard players set @s temp_3 1200
scoreboard players operation @s temp_2 /= @s temp_3
scoreboard players set @s temp_3 60
scoreboard players operation @s temp_2 %= @s temp_3

tellraw @s [{"text":"You have played for ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" minutes!","color":"green"}]

scoreboard players reset @s show_playtime
scoreboard players enable @s show_playtime
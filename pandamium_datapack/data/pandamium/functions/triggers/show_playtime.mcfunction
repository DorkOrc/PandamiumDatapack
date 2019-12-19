scoreboard players operation @s temp_1 = @s playtime_ticks
scoreboard players set @s temp_3 72000
scoreboard players operation @s temp_1 /= @s temp_3

scoreboard players operation @s temp_2 = @s playtime_ticks
scoreboard players set @s temp_3 1200
scoreboard players operation @s temp_2 /= @s temp_3
scoreboard players set @s temp_3 60
scoreboard players operation @s temp_2 %= @s temp_3

execute if score @s show_playtime matches 1 run tellraw @s [{"text":"You have played for ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" minutes!","color":"green"}] 

execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players operation @s temp_1 = @p playtime_ticks
execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players set @s temp_3 72000
execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players operation @s temp_1 /= @s temp_3

execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players operation @s temp_2 = @p playtime_ticks
execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players set @s temp_3 1200
execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players operation @s temp_2 /= @s temp_3
execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players set @s temp_3 60
execute as @a at @a if score @s show_playtime matches 2.. if score @s show_playtime = @p id run scoreboard players operation @s temp_2 %= @s temp_3

execute as @a at @a if score @s show_playtime = @p id run tellraw @s {"text":"you did it!"}

execute as @a at @a if score @s staff_perms matches 1.. if score @s show_playtime matches 2.. if score @s show_playtime = @p id run tellraw @s [{"selector":"@p"},{"text":" has played for ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" minutes!","color":"green"}]

# tellraw @s [{"text":"You have played for ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" minutes!","color":"green"}]

scoreboard players reset @s show_playtime
scoreboard players enable @s show_playtime
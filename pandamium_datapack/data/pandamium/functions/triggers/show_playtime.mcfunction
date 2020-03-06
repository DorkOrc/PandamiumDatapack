execute unless score @s show_playtime matches 2.. at @s run function pandamium:misc/get_playtime
execute if score @s staff_perms matches 1.. if score @s show_playtime matches 2.. at @a if score @s show_playtime = @p id run function pandamium:misc/get_playtime

tellraw @s [{"selector":"@p"},{"text":"'s playtime: ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" minutes","color":"green"}]

scoreboard players reset @s show_playtime
scoreboard players enable @s show_playtime

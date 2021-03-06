tag @s add running_trigger

execute unless score @s staff_perms matches 1.. run scoreboard players set @s get_guidebook -1
execute if score @s get_guidebook matches -1 run tellraw @s [{"text":"[Info]","color":"dark_green"},{"text":" Gave you an updated guidebook!","color":"green"}]
execute if score @s get_guidebook matches -1 run function pandamium:misc/give_guidebook

execute if score @s get_guidebook matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score @s get_guidebook matches 2.. as @a if score @s id = @p[tag=running_trigger] get_guidebook run tag @s add selected_player
execute if score @s get_guidebook matches 2.. as @p[tag=selected_player] run function pandamium:misc/give_guidebook
execute if score @s get_guidebook matches 2.. run tellraw @p[tag=selected_player] [{"text":"[Info] ","color":"blue"},{"selector":"@s"},{"text":" gave you a guidebook!","color":"green"}]
execute if score @s get_guidebook matches 2.. if entity @p[tag=selected_player] run tellraw @s [{"text":"[Info]","color":"gold"},[{"text":" Gave ","color":"yellow"},{"selector":"@p[tag=selected_player]"}," a guidebook!"]]
execute if score @s get_guidebook matches 2.. unless entity @p[tag=selected_player] run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s get_guidebook
scoreboard players enable @s[scores={staff_perms=1..}] get_guidebook

execute if score @s get_guidebook matches 1 run function pandamium:misc/give_guidebook
execute if score @s get_guidebook matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You got a guidebook!"]

execute if score @s get_guidebook matches 2.. at @a if score @p id = @s get_guidebook as @p run function pandamium:misc/give_guidebook
execute if score @s get_guidebook matches 2.. at @a if score @p id = @s get_guidebook run tellraw @p [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," ",{"selector":"@s"}," gave you a guidebook!"]
execute if score @s get_guidebook matches 2.. at @a if score @p id = @s get_guidebook run tellraw @s [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," You gave ",{"selector":"@p"}," a guidebook!"]

scoreboard players reset @s get_guidebook
scoreboard players enable @s get_guidebook

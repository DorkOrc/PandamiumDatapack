execute at @a if score @s get_guidebook = @p id run function pandamium:misc/give_guidebook

scoreboard players reset @s get_guidebook
scoreboard players enable @s get_guidebook
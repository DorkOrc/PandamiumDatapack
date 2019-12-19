execute at @s if score @s get_guidebook matches 1 run function pandamium:misc/give_guidebook
execute at @a if score @s get_guidebook matches 2.. if score @s get_guidebook = @p id as @p run function pandamium:misc/give_guidebook


scoreboard players reset @s get_guidebook
scoreboard players enable @s get_guidebook
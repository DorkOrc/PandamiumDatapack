execute at @s if score @s get_guidebook matches 1 run function pandamium:misc/give_guidebook
execute at @s if score @s get_guidebook matches 1 run tellraw @s {"text":"You got a guidebook!","color":"aqua"}

execute at @a if score @s get_guidebook matches 2.. if score @s get_guidebook = @p id as @p run function pandamium:misc/give_guidebook
execute at @a if score @s get_guidebook matches 2.. if score @s get_guidebook = @p id run tellraw @p [{"selector":"@s"},{"text":" gave you a guidebook.","color":"yellow"}]
execute at @a if score @s get_guidebook matches 2.. if score @s get_guidebook = @p id run tellraw @s [{"text":"You gave ","color":"aqua"},{"selector":"@p"},{"text":" a guidebook.","color":"aqua"}]

scoreboard players reset @s get_guidebook
scoreboard players enable @s get_guidebook
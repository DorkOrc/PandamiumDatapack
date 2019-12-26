execute if score @s get_guidebook matches 1 run function pandamium:misc/give_guidebook
execute if score @s get_guidebook matches 1 run tellraw @s {"text":"You got a guidebook!","color":"aqua"}

execute if score @s get_guidebook matches 2.. at @a if score @p id = @s get_guidebook as @p run function pandamium:misc/give_guidebook
execute if score @s get_guidebook matches 2.. at @a if score @p id = @s get_guidebook run tellraw @p [{"selector":"@s"},{"text":" gave you a guidebook.","color":"yellow"}]
execute if score @s get_guidebook matches 2.. at @a if score @p id = @s get_guidebook run tellraw @s [{"text":"You gave ","color":"aqua"},{"selector":"@p"},{"text":" a guidebook.","color":"aqua"}]

scoreboard players reset @s get_guidebook
scoreboard players enable @s get_guidebook

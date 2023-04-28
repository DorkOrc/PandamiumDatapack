execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @a[tag=source,limit=1] guidebook store success score <player_exists> variable run tag @s add target
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Guidebook]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"guidebook"}},"!"]]

execute if score <returned> variable matches 0 as @a[tag=target,limit=1] run function pandamium:misc/give_guidebook
execute if score <returned> variable matches 0 as @a[tag=target,limit=1] unless score @s staff_perms matches 1.. run scoreboard players reset @s guidebook
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s[tag=!target] [{"text":"[Guidebook]","color":"dark_green"},[{"text":" Gave ","color":"green"},{"selector":"@a[tag=target,limit=1]"}," a guidebook!"]]
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s[tag=target] [{"text":"[Guidebook]","color":"dark_green"},{"text":" Gave you a guidebook!","color":"green"}]

execute unless score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s is_staff_alt matches 1 run data modify storage pandamium:temp source set value '"A staff member"'
execute if score <returned> variable matches 0 run tellraw @a[tag=target,tag=!source,limit=1] [{"text":"[Guidebook] ","color":"blue"},{"nbt":"source","storage":"pandamium:temp","interpret":true},{"text":" gave you a guidebook!","color":"green"}]
execute if score <returned> variable matches 0 run tellraw @a[scores={staff_perms=1..},tag=!source,tag=!target] [{"text":"","color":"gray"},{"text":"[Guidebook] ","color":"dark_gray"},{"nbt":"source","storage":"pandamium:temp","interpret":true}," gave ",{"selector":"@a[tag=target,limit=1]","color":"gray"}," a guidebook."]

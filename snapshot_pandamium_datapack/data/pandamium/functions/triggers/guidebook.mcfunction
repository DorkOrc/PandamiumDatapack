tag @s add source
scoreboard players set <returned> variable 0

# Non-Staff
execute unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Guidebook]","color":"dark_green"},{"text":" Gave you an updated guidebook!","color":"green"}]
execute unless score @s staff_perms matches 1.. store success score <returned> variable run function pandamium:misc/give_guidebook

# Staff
execute if score <returned> variable matches 0 if score @s guidebook matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player

execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=source] guidebook store success score <player_exists> variable run tag @s add target
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Guidebook]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"guidebook"}},"!"]]

execute if score <returned> variable matches 0 as @p[tag=target] run function pandamium:misc/give_guidebook
execute if score <returned> variable matches 0 as @p[tag=target] unless score @s staff_perms matches 1.. run scoreboard players reset @s guidebook
execute if score <returned> variable matches 0 run tellraw @s[tag=!target] [{"text":"[Guidebook]","color":"gold"},[{"text":" Gave ","color":"yellow"},{"selector":"@p[tag=target]"}," a guidebook!"]]
execute if score <returned> variable matches 0 run tellraw @s[tag=target] [{"text":"[Guidebook]","color":"gold"},{"text":" Gave yourself a guidebook!","color":"yellow"}]

execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. run tellraw @p[tag=target,tag=!source] [{"text":"[Guidebook] ","color":"blue"},{"selector":"@s"},{"text":" gave you a guidebook!","color":"green"}]
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. run tellraw @a[scores={staff_perms=1..},tag=!source,tag=!target] [{"text":"","color":"gray"},{"text":"[Guidebook] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," gave ",{"selector":"@p[tag=target]","color":"gray"}," a guidebook."]

execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. run tellraw @p[tag=target,tag=!source] [{"text":"[Guidebook] ","color":"blue"},{"text":"A staff member gave you a guidebook!","color":"green"}]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. run tellraw @a[scores={staff_perms=1..},tag=!source,tag=!target] [{"text":"","color":"gray"},{"text":"[Guidebook] ","color":"dark_gray"},"A staff member gave ",{"selector":"@p[tag=target]","color":"gray"}," a guidebook."]

#

tag @a[tag=target] remove target
tag @s remove source
scoreboard players reset @s guidebook
scoreboard players enable @s[scores={staff_perms=1..}] guidebook

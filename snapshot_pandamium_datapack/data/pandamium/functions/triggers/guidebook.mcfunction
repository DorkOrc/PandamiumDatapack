tag @s add running_trigger
scoreboard players set <returned> variable 0

# Non-Staff
execute unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Guidebook]","color":"dark_green"},{"text":" Gave you an updated guidebook!","color":"green"}]
execute unless score @s staff_perms matches 1.. store success score <returned> variable run function pandamium:misc/give_guidebook

# Staff
execute if score <returned> variable matches 0 if score @s guidebook matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player

execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] guidebook store success score <player_exists> variable run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Guidebook]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"guidebook"}},"!"]]

execute if score <returned> variable matches 0 as @p[tag=selected_player] run function pandamium:misc/give_guidebook
execute if score <returned> variable matches 0 as @p[tag=selected_player] unless score @s staff_perms matches 1.. run scoreboard players reset @s guidebook
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Guidebook]","color":"gold"},[{"text":" Gave ","color":"yellow"},{"selector":"@p[tag=selected_player]"}," a guidebook!"]]

execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. run tellraw @p[tag=selected_player] [{"text":"[Guidebook] ","color":"blue"},{"selector":"@s"},{"text":" gave you a guidebook!","color":"green"}]
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Guidebook] ","color":"dark_gray"},{"selector":"@s","color":"gray"}," gave ",{"selector":"@p[tag=selected_player]","color":"gray"}," a guidebook."]

execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. run tellraw @p[tag=selected_player] [{"text":"[Guidebook] ","color":"blue"},{"text":"A staff member gave you a guidebook!","color":"green"}]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Guidebook] ","color":"dark_gray"},"A staff member gave ",{"selector":"@p[tag=selected_player]","color":"gray"}," a guidebook."]

#

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s guidebook
scoreboard players enable @s[scores={staff_perms=1..}] guidebook

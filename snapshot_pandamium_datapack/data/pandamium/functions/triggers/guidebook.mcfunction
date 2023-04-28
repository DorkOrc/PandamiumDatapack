tag @s add source
scoreboard players set <returned> variable 0

execute if score @s staff_perms matches 1.. if score @s guidebook matches 1 store success score <returned> variable run function pandamium:utils/print_nearest_non_staff_player

execute unless score @s staff_perms matches 1.. run function pandamium:impl/triggers/guidebook/give_self_guidebook
execute if score <returned> variable matches 0 if score @s guidebook matches 2.. run function pandamium:impl/triggers/guidebook/give_target_guidebook

execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Guidebook]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

tag @a remove target
tag @s remove source
scoreboard players reset @s guidebook
scoreboard players enable @s[scores={staff_perms=1..}] guidebook

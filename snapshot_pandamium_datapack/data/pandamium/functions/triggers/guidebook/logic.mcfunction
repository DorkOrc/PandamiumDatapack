execute if score @s staff_perms matches 1.. if score @s guidebook matches 1 run return run function pandamium:utils/print_nearest_non_staff_player

execute unless score @s staff_perms matches 1.. run return run function pandamium:triggers/guidebook/give_self_guidebook
execute if score @s guidebook matches 2.. run return run function pandamium:triggers/guidebook/give_target_guidebook

tellraw @s [{"text":"[Guidebook]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

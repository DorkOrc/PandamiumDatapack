execute if predicate pandamium:player/min_staff_perms/helper if score @s guidebook matches 1 run return run function pandamium:utils/print_nearest_non_staff_player

execute unless predicate pandamium:player/min_staff_perms/helper run return run function pandamium:triggers/guidebook/give_self_guidebook
execute if score @s guidebook matches 2.. run return run function pandamium:triggers/guidebook/give_target_guidebook

tellraw @s [{text:"[Guidebook]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

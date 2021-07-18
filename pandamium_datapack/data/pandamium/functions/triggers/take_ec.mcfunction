tag @s add running_trigger

scoreboard players set <player_exists> variable 0
scoreboard players set <has_items> variable 0
scoreboard players set <empty_chest> variable 0

execute as @a if score @s id = @p[tag=running_trigger] take_ec run scoreboard players set <player_exists> variable 1

execute as @a if score @s id = @p[tag=running_trigger] take_ec if data entity @s EnderItems[0] run scoreboard players add <has_items> variable 1

execute in pandamium:staff_world unless block 7 64 -2 chest run setblock 7 64 -2 chest[facing=west,type=single]
execute in pandamium:staff_world unless data block 7 64 -2 Items[0] run scoreboard players set <empty_chest> variable 1

execute if score @s take_ec matches 1 run function pandamium:misc/print_nearest_non_staff_player

#success
execute if score @s take_ec matches 2.. if score <player_exists> variable matches 1 if score <has_items> variable matches 1.. if score <empty_chest> variable matches 1 as @a if score @s id = @p[tag=running_trigger] take_ec run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},{"text":"[Take]","color":"gold"}," Took ",[{"selector":"@s"},"'s"]," ",{"text":"enderchest","bold":true}," items!"]
execute if score @s take_ec matches 2.. if score <player_exists> variable matches 1 if score <has_items> variable matches 1.. if score <empty_chest> variable matches 1 as @a if score @s id = @p[tag=running_trigger] take_ec in pandamium:staff_world run function pandamium:take/move_ec

#errors
execute if score @s take_ec matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute if score @s take_ec matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Staff world chest still contains items!","color":"red"}]
execute if score @s take_ec matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_items> variable matches 0 run tellraw @s [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has no items in their enderchest!","color":"red"}]

tag @s remove running_trigger
scoreboard players reset @s take_ec
scoreboard players enable @s take_ec

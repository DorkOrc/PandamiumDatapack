tag @s add running_trigger

execute if score @s take_inv matches 1 run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set <player_exists> variable 0
execute if score @s take_inv matches 2.. as @a if score @s id = @p[tag=running_trigger] take_inv store success score <player_exists> variable run tag @s add selected_player
data modify storage pandamium:temp NBT set from entity @p[tag=selected_player]

execute store result score <has_items> variable if data storage pandamium:temp NBT.Inventory[]

scoreboard players set <empty_chest> variable 0
execute in pandamium:staff_world unless block 7 64 -5 chest run setblock 7 64 -5 chest[facing=west,type=right]
execute in pandamium:staff_world unless block 7 64 -4 chest run setblock 7 64 -4 chest[facing=west,type=left]
execute in pandamium:staff_world unless data block 7 64 -5 Items[0] unless data block 7 64 -4 Items[0] run scoreboard players set <empty_chest> variable 1

# Success
execute if score @s take_inv matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_items> variable matches 1.. run tellraw @s [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},{"text":"[Take]","color":"gold"}," Took ",{"score":{"name":"<has_items>","objective":"variable"},"bold":true,"color":"gold"}," items from ",[{"selector":"@p[tag=selected_player]"},"'s "],{"text":"inventory","bold":true},"!"]
execute if score @s take_inv matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_items> variable matches 1.. as @p[tag=selected_player] in pandamium:staff_world run function pandamium:misc/take/move_inventory

# Errors
scoreboard players set <displayed_error> variable 0
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <player_exists> variable matches 1 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <empty_chest> variable matches 1 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Staff world chest still contains items!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <has_items> variable matches 1.. run tellraw @s [{"text":"[Take] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has no items in their inventory!","color":"red"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s take_inv
scoreboard players enable @s take_inv

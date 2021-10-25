tag @s add running_trigger

execute if score @s take_binding matches 1 run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set <player_exists> variable 0
execute if score @s take_binding matches 2.. as @a if score @s id = @p[tag=running_trigger] take_binding store success score <player_exists> variable run tag @s add selected_player
data modify storage pandamium:temp NBT set from entity @p[tag=selected_player]

scoreboard players set <has_items> variable 0
data modify storage pandamium:temp NBT.Inventory[].tag.Enchantments[{id:'binding_curse'}].id set value 'minecraft:binding_curse'
execute if data storage pandamium:temp NBT.Inventory[{Slot:100b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:101b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:102b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run scoreboard players add <has_items> variable 1

scoreboard players set <empty_chest> variable 0
execute in pandamium:staff_world unless block 7 64 0 chest run setblock 7 64 0 chest[facing=west,type=single]
execute in pandamium:staff_world unless data block 7 64 0 Items[0] run scoreboard players set <empty_chest> variable 1

# Success
execute if score @s take_binding matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_items> variable matches 1.. run tellraw @s [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},{"text":"[Take]","color":"gold"}," Took ",{"score":{"name":"<has_items>","objective":"variable"},"bold":true,"color":"gold"}," items from ",[{"selector":"@p[tag=selected_player]"},"'s "],{"text":"bound armour slots","bold":true},"!"]
execute if score @s take_binding matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_items> variable matches 1.. as @p[tag=selected_player] in pandamium:staff_world run function pandamium:misc/take/move_bound_items

# Errors
scoreboard players set <displayed_error> variable 0
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <player_exists> variable matches 1 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <empty_chest> variable matches 1 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Staff world chest still contains items!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <has_items> variable matches 1.. run tellraw @s [{"text":"[Take] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has no bound items in their armour slots!","color":"red"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s take_binding
scoreboard players enable @s take_binding

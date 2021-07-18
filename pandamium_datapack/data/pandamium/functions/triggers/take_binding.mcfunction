tag @s add running_trigger

scoreboard players set <has_bound_items> variable 0
scoreboard players set <empty_chest> variable 0
scoreboard players set <player_exists> variable 0

execute as @a if score @s id = @p[tag=running_trigger] take_binding run data modify storage pandamium:take Inventory set from entity @s Inventory
data modify storage pandamium:take Inventory[].tag.Enchantments[{id:"binding_curse"}].id set value "minecraft:binding_curse"
execute if data storage pandamium:take Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute if data storage pandamium:take Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute if data storage pandamium:take Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute if data storage pandamium:take Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1

execute in pandamium:staff_world unless block 7 64 0 chest run setblock 7 64 0 chest[facing=west,type=single]
execute in pandamium:staff_world unless data block 7 64 0 Items[0] run scoreboard players set <empty_chest> variable 1

execute as @a if score @p[tag=running_trigger] take_binding = @s id run scoreboard players set <player_exists> variable 1

execute if score @s take_binding matches 1 run function pandamium:misc/print_nearest_non_staff_player

#success
execute if score @s take_binding matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 1 as @a if score @p[tag=running_trigger] take_binding = @s id run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger staff_world set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Staff World","bold":true,"color":"gold"}]}},{"text":"[Take]","color":"gold"}," Took ",[{"selector":"@s"},"'s"]," ",{"text":"bound","bold":true}," items!"]
execute if score @s take_binding matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 1 as @a if score @p[tag=running_trigger] take_binding = @s id in pandamium:staff_world run function pandamium:take/move_binding

#errors
execute if score @s take_binding matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text": "[Take]", "color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute if score @s take_binding matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 0 run tellraw @s [{"text":"[Take]","color":"dark_red"},{"text":" Staff world chest still contains items!","color":"red"}]
execute if score @s take_binding matches 2.. if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 0 run tellraw @s [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has no bound items to transfer!","color":"red"}]

tag @s remove running_trigger
scoreboard players reset @s take_binding
scoreboard players enable @s take_binding

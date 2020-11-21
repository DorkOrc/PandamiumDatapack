tag @s add running_trigger

scoreboard players set <has_bound_items> variable 0
scoreboard players set <empty_chest> variable 0
scoreboard players set <player_exists> variable 0

execute as @a if score @p[tag=running_trigger] take_binding = @s id if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute as @a if score @p[tag=running_trigger] take_binding = @s id if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute as @a if score @p[tag=running_trigger] take_binding = @s id if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute as @a if score @p[tag=running_trigger] take_binding = @s id if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1

execute unless data block -4 39 -1 Items[0] run scoreboard players set <empty_chest> variable 1

execute as @a if score @p[tag=running_trigger] take_binding = @s id run scoreboard players set <player_exists> variable 1

execute if score <player_exists> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text": "[Info]", "color":"dark_red"}," No player found with that ID."]
execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 0 run tellraw @p[tag=running_trigger] [{"text": "[Info]", "color":"dark_red"},{"text":" The chest under spawn must be emptied.","color":"red"}]
execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 0 run tellraw @p[tag=running_trigger] [{"text": "[Info]", "color":"dark_red"}," ",{"selector":"@s","color":"red"},{"text":" has no bound items to transfer.","color":"red"}]

execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 1 as @a if score @p[tag=running_trigger] take_binding = @s id run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," Took ",[{"selector":"@s"},"'s"]," bound items!"]
execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 1 as @a if score @p[tag=running_trigger] take_binding = @s id in minecraft:overworld run function pandamium:take/move_binding

tag @s remove running_trigger
scoreboard players reset @s take_binding
scoreboard players enable @s take_binding

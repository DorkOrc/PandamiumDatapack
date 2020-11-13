scoreboard players set <has_bound_items> variable 0
scoreboard players set <empty_chest> variable 0
scoreboard players set <player_exists> variable 0

execute at @a if score @s take_binding = @p id if data entity @p Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute at @a if score @s take_binding = @p id if data entity @p Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute at @a if score @s take_binding = @p id if data entity @p Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1
execute at @a if score @s take_binding = @p id if data entity @p Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set <has_bound_items> variable 1

execute unless data block -4 39 -1 Items[0] run scoreboard players set <empty_chest> variable 1

execute at @a if score @s take_binding = @p id run scoreboard players set <player_exists> variable 1

execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 0 run tellraw @s [{"text": "[Info]", "color":"dark_red"}," ",{"selector":"@p","color":"red"},{"text":" has no bound items to transfer.","color":"red"}]
execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 0 run tellraw @s [{"text": "[Info]", "color":"dark_red"},{"text":" The chest under spawn must be emptied.","color":"red"}]
execute if score <player_exists> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Info]", "color":"dark_red"}," No player found with that ID."]

execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 1 at @a if score @s take_binding = @p id run tellraw @s [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," Took ",[{"selector":"@p"},"'s"]," bound items!"]
execute if score <player_exists> variable matches 1 if score <empty_chest> variable matches 1 if score <has_bound_items> variable matches 1 at @a if score @s take_binding = @p id as @p in minecraft:overworld run function pandamium:take/move_binding

scoreboard players reset @s take_binding
scoreboard players enable @s take_binding

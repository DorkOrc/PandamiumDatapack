# arguments: x, y, z, distance, current_gametime, slot, (user_id)

# report distance
$title @s actionbar "Pale Garden is $(distance) blocks away"

# return item
data modify storage pandamium:queue selected.entry.given_back set value 1b

$execute unless items entity @s $(slot) * run return run loot replace entity @s $(slot) loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"pandamium:items/custom/pale_garden_compass"}]}],functions:[{function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{tracked:false,target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]}}}},{function:"minecraft:set_custom_data",tag:{pandamium:{used_timestamp:$(current_gametime)}}}]}
$execute if predicate pandamium:player/can_pick_up_any_item run return run loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"pandamium:items/custom/pale_garden_compass"}]}],functions:[{function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{tracked:false,target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]}}}},{function:"minecraft:set_custom_data",tag:{pandamium:{used_timestamp:$(current_gametime)}}}]}
$execute at @s run return run loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"pandamium:items/custom/pale_garden_compass"}]}],functions:[{function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{tracked:false,target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]}}}},{function:"minecraft:set_custom_data",tag:{pandamium:{used_timestamp:$(current_gametime)}}}]}


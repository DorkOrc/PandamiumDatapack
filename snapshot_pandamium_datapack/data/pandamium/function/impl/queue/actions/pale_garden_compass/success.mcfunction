# arguments: x, y, z, distance, slot, current_gametime, (user_id)

$item modify entity @s $(slot) [{function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{tracked:false,target:{dimension:"minecraft:overworld",pos:[I;$(x),$(y),$(z)]}}}},{function:"minecraft:set_custom_data",tag:{pandamium:{used_timestamp:$(current_gametime)}}}]
$title @s actionbar "Pale Garden is $(distance) blocks away"

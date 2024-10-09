data modify storage pandamium:queue selected.entry merge value {tick:0,next_entry_x:0f,next_entry_y:0f,next_entry_z:0f,next_entry_yaw:0,next_entry_pitch:0,next_entry_tick:0,previous_x:0f,previous_y:0f,previous_z:0f}
execute if data storage pandamium:queue selected.entry{course:4} run data modify storage pandamium:queue selected.entry merge value {tick:0,next_entry_x:-300.5f,next_entry_y:136f,next_entry_z:197.8f,next_entry_yaw:0,next_entry_pitch:10,next_entry_tick:0,previous_x:-300.5f,previous_y:136f,previous_z:197.8f}

execute unless data storage pandamium:queue selected.entry.record run data modify storage pandamium:queue selected.entry.record set value []
execute unless data storage pandamium:queue selected.entry.teleport_targets run data modify storage pandamium:queue selected.entry.teleport_targets set value "_"

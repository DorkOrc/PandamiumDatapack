# arguments: x, y, z

$data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside" set value {args:{x:$(x),y:$(y),z:$(z)},min_x:-30000000,max_x:30000000,min_y:-30000000,max_y:30000000,min_z:-30000000,max_z:30000000}

execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.x{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".min_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.x
execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.x{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".max_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.x
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".min_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.x.min
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".max_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.x.max

execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.y{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".min_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.y
execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.y{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".max_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.y
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".min_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.y.min
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".max_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.y.max

execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.z{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".min_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.z
execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.z{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".max_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.z
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".min_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.z.min
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".max_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside".args.z.max

execute at @s run function pandamium:impl/clamp_entity_position_outside with storage pandamium:local functions."pandamium:utils/clamp_entity_position_outside"

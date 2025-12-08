# arguments: x, y, z

$data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside" set value {args:{x:$(x),y:$(y),z:$(z)},min_x:-30000000,max_x:30000000,min_y:-30000000,max_y:30000000,min_z:-30000000,max_z:30000000}

execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.x{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".min_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.x
execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.x{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".max_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.x
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".min_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.x.min
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".max_x set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.x.max

execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.y{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".min_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.y
execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.y{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".max_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.y
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".min_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.y.min
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".max_y set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.y.max

execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.z{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".min_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.z
execute unless data storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.z{} run data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".max_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.z
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".min_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.z.min
data modify storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".max_z set from storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside".args.z.max

execute at @s run function pandamium:impl/clamp_entity_position_inside with storage pandamium:local functions."pandamium:utils/clamp_entity_position_inside"

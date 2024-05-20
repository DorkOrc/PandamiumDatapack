#{
#	action: "search_nearby_for_homes",
#	homes: [
#		{
#			data: INT-ARRAY,
#			xyz: INT-ARRAY
#		},
#		...
#	],
#	origin: {
#		x: INT,
#		y: INT,
#		z: INT,
#		dimension: STRING
#	},
#	source: INT,
#	node_entity_tag: STRING,
#	homes_found: INT
#}

execute if data storage pandamium:queue actions_ran."search_nearby_for_homes" run return run function pandamium:impl/queue/utils/continue_pending

$execute unless data storage pandamium:queue selected.entry.homes[0] run return run tellraw @a[scores={id=$(source)},limit=1] {"color":"red","text":"No homes were found within 500 blocks horizontally of ","extra":[{"color":"yellow","text":"","extra":[{"storage":"pandamium:queue","nbt":"selected.entry.origin.x"}," ~ ",{"storage":"pandamium:queue","nbt":"selected.entry.origin.z"}]}," in ",{"storage":"pandamium:queue","nbt":"selected.entry.origin.dimension","color":"yellow"},"!"]}

# process top entry
#dx = origin_x - home_x, dz = origin_z - home_z
execute store result score <x> variable run data get storage pandamium:queue selected.entry.homes[-1].xyz[0]
execute store result score <z> variable run data get storage pandamium:queue selected.entry.homes[-1].xyz[2]
execute store result score <dx> variable run data get storage pandamium:queue selected.entry.origin.x
execute store result score <dz> variable run data get storage pandamium:queue selected.entry.origin.z
scoreboard players operation <dx> variable -= <x> variable
scoreboard players operation <dz> variable -= <z> variable
scoreboard players set <dy> variable 0
function pandamium:utils/get/distance/from_scores
execute if score <distance> variable matches 0..500 in pandamium:staff_world positioned 8. 0 8. summon marker run function pandamium:impl/queue/actions/search_nearby_for_homes/create_new_node

# continue
data remove storage pandamium:queue selected.entry.homes[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.homes[]
execute if data storage pandamium:queue selected.entry.homes[0] run return run function pandamium:impl/queue/utils/continue

# end
function pandamium:utils/get/dimension_name/from_string_id with storage pandamium:queue selected.entry.origin
$execute if data storage pandamium:queue selected.entry{homes_found:0} run return run tellraw @a[scores={id=$(source)},limit=1] {"color":"red","text":"No homes were found within 500 blocks horizontally of ","extra":[{"color":"yellow","text":"","extra":[{"storage":"pandamium:queue","nbt":"selected.entry.origin.x"}," ~ ",{"storage":"pandamium:queue","nbt":"selected.entry.origin.z"}]}," in ",{"storage":"pandamium:temp","nbt":"dimension_name","color":"yellow"},"!"]}
$tellraw @a[scores={id=$(source)},limit=1] {"color":"green","text":"","extra":[{"storage":"pandamium:queue","nbt":"selected.entry.homes_found","color":"aqua"}," homes were found within 500 blocks horizontally of ",{"color":"aqua","text":"","extra":[{"storage":"pandamium:queue","nbt":"selected.entry.origin.x"}," ~ ",{"storage":"pandamium:queue","nbt":"selected.entry.origin.z"}]}," in ",{"storage":"pandamium:temp","nbt":"dimension_name","color":"aqua"},"!"]}
$execute in pandamium:staff_world positioned 8. 0 8. as @e[tag=$(node_entity_tag),distance=..1,sort=furthest] run tellraw @a[scores={id=$(source)},limit=1] {"entity":"@s","nbt":"data.text","interpret":true}
$execute in pandamium:staff_world positioned 8. 0 8. run kill @e[tag=$(node_entity_tag),distance=..1]

tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Finished [search_nearby_for_homes]]"}

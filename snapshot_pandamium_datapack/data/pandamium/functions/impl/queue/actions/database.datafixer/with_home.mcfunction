# arguments: home

$data modify storage pandamium:temp xyzd set from storage pandamium:queue selected.entry.entries[-1].data.homes.$(home).xyzd
execute store result score <x> variable run data get storage pandamium:temp xyzd[0]
execute store result score <y> variable run data get storage pandamium:temp xyzd[1]
execute store result score <z> variable run data get storage pandamium:temp xyzd[2]
execute store result score <d> variable run data get storage pandamium:temp xyzd[3]

function pandamium:utils/database/regions/load_chunk/from_xzd_scores
data modify storage pandamium.db:regions selected.chunk.entry.homes append value {xyz:[I;0,0,0],data:[I;0,0]}
execute store result storage pandamium.db:regions selected.chunk.entry.homes[-1].xyz[0] int 1 run scoreboard players get <x> variable
execute store result storage pandamium.db:regions selected.chunk.entry.homes[-1].xyz[1] int 1 run scoreboard players get <y> variable
execute store result storage pandamium.db:regions selected.chunk.entry.homes[-1].xyz[2] int 1 run scoreboard players get <z> variable
execute store result storage pandamium.db:regions selected.chunk.entry.homes[-1].data[0] int 1 run data get storage pandamium:queue selected.entry.entries[-1].id
$data modify storage pandamium.db:regions selected.chunk.entry.homes[-1].data[1] set value $(home)

$tellraw @a[scores={send_extra_debug_info=2..}] [{"color":"gray","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium.db:regions","nbt":"selected.chunk.entry"},"\n\n",[{"color":"gray","text":"at index "},{"storage":"pandamium.db:regions","nbt":"selected.chunk.index"}]]},"italic":true,"text":"[queue.database.datafixer: Appended "},{"storage":"pandamium:queue","nbt":"selected.entry.entries[-1].username"},"'s home $(home) to chunk ",{"storage":"pandamium.db:regions","nbt":"selected.chunk.entry.chunk[]","separator":" "},"]"]

function pandamium:utils/database/regions/save

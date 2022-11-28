scoreboard players set <returned> variable 0

function pandamium:misc/raycast/containers/main
execute if score <returned> variable matches 0 store success score <returned> variable unless score <raycast_hit_target> variable matches 1 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You are not looking at a container!","color":"red"}]

execute if score <returned> variable matches 0 run data modify storage pandamium:temp containers.nbt set value {}
execute if score <returned> variable matches 0 at @e[type=marker,tag=raycast.containers,sort=nearest,limit=1] run data modify storage pandamium:temp containers.nbt set from block ~ ~ ~
execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set value []
execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set from storage pandamium:temp containers.nbt.Items
execute if score <returned> variable matches 0 store success score <returned> variable unless data storage pandamium:temp containers.nbt.Items[0] run tellraw @s [{"text":"[Containers] ","color":"dark_red"},[{"text":"The ","color":"red"},{"nbt":"containers.nbt.id","storage":"pandamium:temp","bold":true}," at ",[{"nbt":"containers.nbt.x","storage":"pandamium:temp","bold":true}," ",{"nbt":"containers.nbt.y","storage":"pandamium:temp"}," ",{"nbt":"containers.nbt.z","storage":"pandamium:temp"}]," has no items in it!"]]

execute store result score @s selected_block.x run data get storage pandamium:temp containers.nbt.x
execute store result score @s selected_block.y run data get storage pandamium:temp containers.nbt.y
execute store result score @s selected_block.z run data get storage pandamium:temp containers.nbt.z

# Run
data modify storage pandamium:containers source set value 'block'
execute if score <returned> variable matches 0 run tellraw @s [{"text":"========","color":"yellow"},{"text":" Block Contents ","bold":true},"========",{"text":"\nContainer Type: ","bold":true,"color":"yellow"},{"nbt":"containers.nbt.id","storage":"pandamium:temp","color":"green"},{"text":"\nLocation: ","bold":true,"color":"yellow"},[{"nbt":"containers.nbt.x","storage":"pandamium:temp","bold":true,"color":"gold"}," ",{"nbt":"containers.nbt.y","storage":"pandamium:temp"}," ",{"nbt":"containers.nbt.z","storage":"pandamium:temp"}]]
execute if score <returned> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:brewing_stand'} run function pandamium:containers/brewing_stand
execute if score <returned> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:furnace'} run function pandamium:containers/furnace
execute if score <returned> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:smoker'} run function pandamium:containers/furnace
execute if score <returned> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:blast_furnace'} run function pandamium:containers/furnace
execute if score <returned> variable matches 0 unless data storage pandamium:temp containers.nbt{id:'minecraft:brewing_stand'} unless data storage pandamium:temp containers.nbt{id:'minecraft:furnace'} unless data storage pandamium:temp containers.nbt{id:'minecraft:smoker'} unless data storage pandamium:temp containers.nbt{id:'minecraft:blast_furnace'} run function pandamium:containers/generic
execute if score <returned> variable matches 0 run tellraw @s {"text":"=================================","color":"yellow"}

execute as @e[type=marker,tag=raycast.ray,limit=1] run function pandamium:misc/raycast/kill_marker_vibration_fix
scoreboard players reset @s container
scoreboard players enable @s container

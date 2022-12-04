scoreboard players set <returned> variable 0

function pandamium:misc/raycast/containers/main
execute if score <raycast_hit_target> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You are not looking at a container!","color":"red"}]

execute if score <returned> variable matches 0 run data modify storage pandamium:temp containers.nbt set value {}
execute if score <returned> variable matches 0 at @e[type=marker,tag=raycast.containers,sort=nearest,limit=1] align xyz run data modify storage pandamium:temp containers.nbt set from block ~ ~ ~

execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set value []
execute if score <returned> variable matches 0 run data modify storage pandamium:containers items set from storage pandamium:temp containers.nbt.Items
execute if score <returned> variable matches 0 if data storage pandamium:temp containers.nbt{id:"minecraft:lectern"} run data modify storage pandamium:containers items append from storage pandamium:temp containers.nbt.Book
execute if score <returned> variable matches 0 if data storage pandamium:temp containers.nbt{id:"minecraft:jukebox"} run data modify storage pandamium:containers items append from storage pandamium:temp containers.nbt.RecordItem
execute if score <returned> variable matches 0 unless data storage pandamium:containers items[0] store success score <returned> variable run tellraw @s [{"text":"[Containers] ","color":"dark_red"},[{"text":"The ","color":"red"},{"nbt":"containers.nbt.id","storage":"pandamium:temp","bold":true}," at ",[{"nbt":"containers.nbt.x","storage":"pandamium:temp","bold":true}," ",{"nbt":"containers.nbt.y","storage":"pandamium:temp"}," ",{"nbt":"containers.nbt.z","storage":"pandamium:temp"}]," has no items in it!"]]

execute store result score @s selected_block.x run data get storage pandamium:temp containers.nbt.x
execute store result score @s selected_block.y run data get storage pandamium:temp containers.nbt.y
execute store result score @s selected_block.z run data get storage pandamium:temp containers.nbt.z

# Run
data modify storage pandamium:containers source set value 'block'
execute if score <returned> variable matches 0 run tellraw @s [{"text":"========","color":"yellow"},{"text":" Block Contents ","bold":true},"========",{"text":"\nBlock Type: ","bold":true,"color":"yellow"},{"nbt":"containers.nbt.id","storage":"pandamium:temp","color":"green"},{"text":"\nLocation: ","bold":true,"color":"yellow"},[{"nbt":"containers.nbt.x","storage":"pandamium:temp","bold":true,"color":"gold"}," ",{"nbt":"containers.nbt.y","storage":"pandamium:temp"}," ",{"nbt":"containers.nbt.z","storage":"pandamium:temp"}]]
scoreboard players set <unique_container> variable 0
execute if score <returned> variable matches 0 if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:brewing_stand'} store success score <unique_container> variable run function pandamium:containers/brewing_stand
execute if score <returned> variable matches 0 if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:furnace'} store success score <unique_container> variable run function pandamium:containers/furnace
execute if score <returned> variable matches 0 if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:smoker'} store success score <unique_container> variable run function pandamium:containers/furnace
execute if score <returned> variable matches 0 if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:blast_furnace'} store success score <unique_container> variable run function pandamium:containers/furnace
execute if score <returned> variable matches 0 if score <unique_container> variable matches 0 run function pandamium:containers/generic
execute if score <returned> variable matches 0 run tellraw @s {"text":"=================================","color":"yellow"}

execute as @e[type=marker,tag=raycast.ray,limit=1] run function pandamium:misc/raycast/kill_marker_vibration_fix
scoreboard players reset @s container
scoreboard players enable @s container

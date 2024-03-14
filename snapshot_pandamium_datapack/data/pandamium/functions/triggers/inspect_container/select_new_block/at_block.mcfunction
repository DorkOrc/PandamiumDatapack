data modify storage pandamium:temp containers.nbt set from block ~ ~ ~

data modify storage pandamium:containers items set value []
data modify storage pandamium:containers items set from storage pandamium:temp containers.nbt.Items
execute if data storage pandamium:temp containers.nbt{id:"minecraft:lectern"} run data modify storage pandamium:containers items append from storage pandamium:temp containers.nbt.Book
execute if data storage pandamium:temp containers.nbt{id:"minecraft:jukebox"} run data modify storage pandamium:containers items append from storage pandamium:temp containers.nbt.RecordItem
execute if data storage pandamium:temp containers.nbt{id:"minecraft:decorated_pot"} run data modify storage pandamium:containers items append from storage pandamium:temp containers.nbt.item
data modify storage pandamium:temp containers.display_id set string storage pandamium:temp containers.nbt.id 10
execute unless data storage pandamium:containers items[0] run return run tellraw @s [{"text":"[Containers] ","color":"dark_red"},[{"text":"The ","color":"red"},{"nbt":"containers.display_id","storage":"pandamium:temp","bold":true}," at ",[{"nbt":"containers.nbt.x","storage":"pandamium:temp","bold":true}," ",{"nbt":"containers.nbt.y","storage":"pandamium:temp"}," ",{"nbt":"containers.nbt.z","storage":"pandamium:temp"}]," has no items in it!"]]

execute store result score @s selected_block.x run data get storage pandamium:temp containers.nbt.x
execute store result score @s selected_block.y run data get storage pandamium:temp containers.nbt.y
execute store result score @s selected_block.z run data get storage pandamium:temp containers.nbt.z

# Run
data modify storage pandamium:containers source set value 'container'
tellraw @s [{"text":"========","color":"yellow"},{"text":" Block Contents ","bold":true},"========",{"text":"\nContainer Type: ","bold":true,"color":"yellow"},{"nbt":"containers.display_id","storage":"pandamium:temp","color":"green"},{"text":"\nLocation: ","bold":true,"color":"yellow"},[{"nbt":"containers.nbt.x","storage":"pandamium:temp","bold":true,"color":"gold"}," ",{"nbt":"containers.nbt.y","storage":"pandamium:temp"}," ",{"nbt":"containers.nbt.z","storage":"pandamium:temp"}]]
scoreboard players set <unique_container> variable 0
execute if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:brewing_stand'} store success score <unique_container> variable run function pandamium:impl/containers/brewing_stand
execute if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:furnace'} store success score <unique_container> variable run function pandamium:impl/containers/furnace
execute if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:smoker'} store success score <unique_container> variable run function pandamium:impl/containers/furnace
execute if score <unique_container> variable matches 0 if data storage pandamium:temp containers.nbt{id:'minecraft:blast_furnace'} store success score <unique_container> variable run function pandamium:impl/containers/furnace
execute if score <unique_container> variable matches 0 run function pandamium:impl/containers/generic
tellraw @s {"text":"=================================","color":"yellow"}

data remove storage pandamium:temp containers.nbt
data modify storage pandamium:temp containers.nbt set from block ~ ~ ~
execute unless data storage pandamium:temp containers.nbt run scoreboard players reset @s selected_block.x
execute unless data storage pandamium:temp containers.nbt store success score <returned> variable run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" Could not find a container at your selected block!","color":"red"}]

data remove storage pandamium:containers inspect.item

execute if score <slot> variable matches 0 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:0b}]
execute if score <slot> variable matches 1 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:1b}]
execute if score <slot> variable matches 2 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:2b}]
execute if score <slot> variable matches 3 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:3b}]
execute if score <slot> variable matches 4 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:4b}]
execute if score <slot> variable matches 5 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:5b}]
execute if score <slot> variable matches 6 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:6b}]
execute if score <slot> variable matches 7 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:7b}]
execute if score <slot> variable matches 8 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:8b}]
execute if score <slot> variable matches 9 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:9b}]
execute if score <slot> variable matches 10 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:10b}]
execute if score <slot> variable matches 11 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:11b}]
execute if score <slot> variable matches 12 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:12b}]
execute if score <slot> variable matches 13 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:13b}]
execute if score <slot> variable matches 14 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:14b}]
execute if score <slot> variable matches 15 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:15b}]
execute if score <slot> variable matches 16 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:16b}]
execute if score <slot> variable matches 17 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:17b}]
execute if score <slot> variable matches 18 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:18b}]
execute if score <slot> variable matches 19 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:19b}]
execute if score <slot> variable matches 20 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:20b}]
execute if score <slot> variable matches 21 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:21b}]
execute if score <slot> variable matches 22 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:22b}]
execute if score <slot> variable matches 23 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:23b}]
execute if score <slot> variable matches 24 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:24b}]
execute if score <slot> variable matches 25 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:25b}]
execute if score <slot> variable matches 26 run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Items[{Slot:26b}]

execute if score <slot> variable matches 0 if data storage pandamium:temp containers.nbt{id:"minecraft:lectern"} run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.Book
execute if score <slot> variable matches 0 if data storage pandamium:temp containers.nbt{id:"minecraft:jukebox"} run data modify storage pandamium:containers inspect.item set from storage pandamium:temp containers.nbt.RecordItem

data modify storage pandamium:containers inspect.subheader set value '[{"text":"","color":"yellow"},{"text":"Container Type: ","bold":true},{"nbt":"containers.nbt.id","storage":"pandamium:temp","color":"green"},{"text":"\\nLocation: ","bold":true},[{"nbt":"containers.nbt.x","storage":"pandamium:temp","bold":true,"color":"gold"}," ",{"nbt":"containers.nbt.y","storage":"pandamium:temp"}," ",{"nbt":"containers.nbt.z","storage":"pandamium:temp"}],"\\n",{"text":"Container Slot: ","bold":true,"color":"aqua"},{"score":{"name":"<slot>","objective":"variable"},"color":"gold"}]'
execute if score <returned> variable matches 0 run function pandamium:impl/containers/run/inspect/main
execute if score <can_inspect> variable matches 0 run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You cannot inspect that slot!","color":"red"}]

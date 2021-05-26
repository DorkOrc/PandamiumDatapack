execute if data storage pandamium:containers {container:'inventory'} run function pandamium:containers/run/prompt_contents_inventory
execute if data storage pandamium:containers {container:'enderchest'} run function pandamium:containers/run/prompt_contents_enderchest

execute unless data storage pandamium:containers {container:'inventory'} unless data storage pandamium:containers {container:'enderchest'} run execute store result score <total_items> variable run data get storage pandamium:containers item.tag.Items
execute unless data storage pandamium:containers {container:'inventory'} unless data storage pandamium:containers {container:'enderchest'} run tellraw @s [{"text":"└Items: ","color":"aqua"},{"text":"[See Contents] ","color":"gray","hoverEvent":{"action":"show_text","value":["x",{"score":{"name":"<total_items>","objective":"variable"}}," Slots"]}}]

data merge storage pandamium:spawnpoint {print_dimension:"Custom Dimension"}
execute if score @s spawnpoint_dim matches -1 run data merge storage pandamium:spawnpoint {print_dimension:"Nether"}
execute if score @s spawnpoint_dim matches 0 run data merge storage pandamium:spawnpoint {print_dimension:"Overworld"}
execute if score @s spawnpoint_dim matches 1 run data merge storage pandamium:spawnpoint {print_dimension:"End"}
execute if score @s spawnpoint_dim matches 2 run data merge storage pandamium:spawnpoint {print_dimension:"Staff World"}

execute store success score <has_spawnpoint> temp if data entity @s SpawnX

execute if score @s staff_perms matches 1 if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> temp matches 1 run tellraw @p[tag=running_trigger] [{"text":"Current Spawnpoint: ","color":"gold"},[{"score":{"name":"@s","objective":"spawnpoint_x"},"bold":true,"color":"yellow"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"yellow","bold":true}]
execute if score @s staff_perms matches 1 if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> temp matches 0 run tellraw @p[tag=running_trigger] [{"text":"Last Spawnpoint: ","color":"gold"},[{"score":{"name":"@s","objective":"spawnpoint_x"},"bold":true,"color":"yellow"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"yellow","bold":true}]

execute if score @s staff_perms matches 2.. if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> temp matches 1 run tellraw @p[tag=running_trigger] [{"text":"Current Spawnpoint: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"nbt":"username","storage":"pandamium:temp"},"'s",{"text":" Spawnpoint","color":"gold","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}},[{"score":{"name":"@s","objective":"spawnpoint_x"},"bold":true,"color":"yellow"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"yellow","bold":true}]
execute if score @s staff_perms matches 2.. if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> temp matches 0 run tellraw @p[tag=running_trigger] [{"text":"Last Spawnpoint: ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"nbt":"username","storage":"pandamium:temp"},"'s",{"text":" Spawnpoint","color":"gold","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}},[{"score":{"name":"@s","objective":"spawnpoint_x"},"bold":true,"color":"yellow"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"yellow","bold":true}]

execute unless score @s spawnpoint_x = @s spawnpoint_x run tellraw @p[tag=running_trigger] [{"text":"Spawnpoint: ","color":"gold"},{"text":"Not Set","color":"gray"}]

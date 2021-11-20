tag @s add running_trigger

execute unless score @s spawnpoint matches ..1 run scoreboard players reset @s selected_player
execute unless score @s spawnpoint matches ..1 as @a if score @s id = @p[tag=running_trigger] spawnpoint run tag @s add selected_player
execute unless score @s spawnpoint matches ..1 run scoreboard players operation @s selected_player = @p[tag=selected_player] id

execute if score @p[tag=running_trigger] spawnpoint matches 1 run function pandamium:misc/print_nearest_non_staff_player

data merge storage pandamium:spawnpoint {print_dimension:"Custom Dimension"}
execute if score @p[tag=selected_player] spawnpoint_dim matches -1 run data merge storage pandamium:spawnpoint {print_dimension:"Nether"}
execute if score @p[tag=selected_player] spawnpoint_dim matches 0 run data merge storage pandamium:spawnpoint {print_dimension:"Overworld"}
execute if score @p[tag=selected_player] spawnpoint_dim matches 1 run data merge storage pandamium:spawnpoint {print_dimension:"End"}
execute if score @p[tag=selected_player] spawnpoint_dim matches 2 run data merge storage pandamium:spawnpoint {print_dimension:"Staff World"}

execute store success score <has_spawnpoint> variable if data entity @p[tag=selected_player] SpawnX
execute if score @s staff_perms matches 1 as @p[tag=selected_player] if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@s"},"'s "],{"text":"current","color":"gold","bold":true}," spawnpoint is at ",[{"score":{"name":"@s","objective":"spawnpoint_x"},"color":"gold"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]
execute if score @s staff_perms matches 1 as @p[tag=selected_player] if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@s"},"'s "],{"text":"last","color":"gold","bold":true}," spawnpoint was at ",[{"score":{"name":"@s","objective":"spawnpoint_x"},"color":"gold"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]
execute if score @s staff_perms matches 2.. as @p[tag=selected_player] if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},[{"selector":"@p[tag=selected_player]"},"'s"],{"text":" Spawnpoint","color":"gold","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@s"},"'s "],{"text":"current","color":"gold","bold":true}," spawnpoint is at ",[{"score":{"name":"@s","objective":"spawnpoint_x"},"color":"gold"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]
execute if score @s staff_perms matches 2.. as @p[tag=selected_player] if score @s spawnpoint_x = @s spawnpoint_x if score <has_spawnpoint> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},[{"selector":"@p[tag=selected_player]"},"'s"],{"text":" Spawnpoint","color":"gold","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@s"},"'s "],{"text":"last","color":"gold","bold":true}," spawnpoint was at ",[{"score":{"name":"@s","objective":"spawnpoint_x"},"color":"gold"}," ",{"score":{"name":"@s","objective":"spawnpoint_y"}}," ",{"score":{"name":"@s","objective":"spawnpoint_z"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]

execute as @p[tag=selected_player] unless score @s spawnpoint_x = @s spawnpoint_x run tellraw @p[tag=running_trigger] [{"text":"[Spawnpoint] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has not set a spawnpoint yet!","color":"red"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint

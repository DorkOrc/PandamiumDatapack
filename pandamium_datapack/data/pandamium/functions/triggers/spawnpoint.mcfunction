tag @s add running_trigger
scoreboard players set <returned> variable 0

execute if score @s spawnpoint matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player

execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] spawnpoint run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable unless entity @p[tag=selected_player] run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"spawnpoint"}},"!"]]
execute if score <returned> variable matches 0 run scoreboard players reset @s selected_player
execute if score <returned> variable matches 0 run scoreboard players operation @s selected_player = @p[tag=selected_player] id

# Run
scoreboard players set <spawnpoint_exists> variable 0
execute if score <returned> variable matches 0 as @p[tag=selected_player] if score @s spawnpoint_x = @s spawnpoint_x store success score <spawnpoint_exists> variable run function pandamium:misc/spawnpoint/load_spawnpoint
execute if score <returned> variable matches 0 store success score <returned> variable if score <spawnpoint_exists> variable matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has not set a spawnpoint yet!","color":"red"}]

execute if score <returned> variable matches 0 run data merge storage pandamium:spawnpoint {print_dimension:"Custom Dimension"}
execute if score <returned> variable matches 0 if score <tp_d> variable matches -1 run data merge storage pandamium:spawnpoint {print_dimension:"The Nether"}
execute if score <returned> variable matches 0 if score <tp_d> variable matches 0 run data merge storage pandamium:spawnpoint {print_dimension:"The Overworld"}
execute if score <returned> variable matches 0 if score <tp_d> variable matches 1 run data merge storage pandamium:spawnpoint {print_dimension:"The End"}
execute if score <returned> variable matches 0 if score <tp_d> variable matches 2 run data merge storage pandamium:spawnpoint {print_dimension:"The Staff World"}

execute if score <returned> variable matches 0 store success score <has_spawnpoint> variable if data entity @p[tag=selected_player] SpawnX
execute if score <returned> variable matches 0 if score @s staff_perms matches 1 if score <has_spawnpoint> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@p[tag=selected_player]"},"'s "],{"text":"current","color":"gold"}," spawnpoint is at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]
execute if score <returned> variable matches 0 if score @s staff_perms matches 1 if score <has_spawnpoint> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@p[tag=selected_player]"},"'s "],{"text":"last","color":"gold"}," spawnpoint was at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]
execute if score <returned> variable matches 0 if score @s staff_perms matches 2.. if score <has_spawnpoint> variable matches 1 run tellraw @s [{"text":"","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},[{"selector":"@p[tag=selected_player]"},"'s"],{"text":" Spawnpoint","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@p[tag=selected_player]"},"'s "],{"text":"current","color":"gold"}," spawnpoint is at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]
execute if score <returned> variable matches 0 if score @s staff_perms matches 2.. if score <has_spawnpoint> variable matches 0 run tellraw @s [{"text":"","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},[{"selector":"@p[tag=selected_player]"},"'s"],{"text":" Spawnpoint","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@p[tag=selected_player]"},"'s "],{"text":"last","color":"gold"}," spawnpoint was at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in the ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold","bold":true},"!"]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint

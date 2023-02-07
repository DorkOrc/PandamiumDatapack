scoreboard players set <returned> variable 0

execute if score @s spawnpoint matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player

execute if score <returned> variable matches 0 run scoreboard players reset @s selected_player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s spawnpoint
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"spawnpoint"}},"!"]]
execute if score <returned> variable matches 0 run scoreboard players operation @s selected_player = <target_id> variable

# Run
execute if score <returned> variable matches 0 run scoreboard players set <spawnpoint_exists> variable 0
execute if score <returned> variable matches 0 as @a[tag=target,limit=1] if score @s spawnpoint_x = @s spawnpoint_x store success score <spawnpoint_exists> variable run function pandamium:misc/spawnpoint/get_spawnpoint_coords
execute if score <returned> variable matches 0 store success score <returned> variable if score <spawnpoint_exists> variable matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},{"text":" has not set a spawnpoint yet!","color":"red"}]

execute if score <returned> variable matches 0 run data modify storage pandamium:spawnpoint print_dimension set value "A Custom Dimension"
execute if score <returned> variable matches 0 if score <tp_d> variable matches -1 run data modify storage pandamium:spawnpoint print_dimension set value "The Nether"
execute if score <returned> variable matches 0 if score <tp_d> variable matches 0 run data modify storage pandamium:spawnpoint print_dimension set value "The Overworld"
execute if score <returned> variable matches 0 if score <tp_d> variable matches 1 run data modify storage pandamium:spawnpoint print_dimension set value "The End"
execute if score <returned> variable matches 0 if score <tp_d> variable matches 2 run data modify storage pandamium:spawnpoint print_dimension set value "The Staff World"

execute if score <returned> variable matches 0 store success score <has_spawnpoint> variable if data entity @a[tag=target,limit=1] SpawnX
execute if score <returned> variable matches 0 if score @s staff_perms matches 1 if score <has_spawnpoint> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@a[tag=target,limit=1]"},"'s "],{"text":"current","color":"gold"}," spawnpoint is at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold"},"!"]
execute if score <returned> variable matches 0 if score @s staff_perms matches 1 if score <has_spawnpoint> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@a[tag=target,limit=1]"},"'s "],{"text":"last","color":"gold"}," spawnpoint was at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold"},"!"]
execute if score <returned> variable matches 0 if score @s staff_perms matches 2.. if score <has_spawnpoint> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@a[tag=target,limit=1]"},"'s "],{"text":"current","color":"gold"}," spawnpoint is at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold"},"! ",{"text":"[→]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to target's ","color":"blue"},{"text":"Spawnpoint","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}}]
execute if score <returned> variable matches 0 if score @s staff_perms matches 2.. if score <has_spawnpoint> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint] ","color":"gold"},[{"selector":"@a[tag=target,limit=1]"},"'s "],{"text":"last","color":"gold"}," spawnpoint was at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"gold"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in ",{"nbt":"print_dimension","storage":"pandamium:spawnpoint","color":"gold"},"! ",{"text":"[→]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to target's ","color":"blue"},{"text":"Spawnpoint","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -1"}}]

tag @a remove target
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint

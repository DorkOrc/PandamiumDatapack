# Manage player ids
scoreboard players add @a id 0
execute as @a[scores={id=..0}] run function pandamium:misc/assign_id

# Disable tnt
execute as @e[type=#pandamium:tnt] at @s run function pandamium:misc/defuse_tnt

# Random TP
execute as @a[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] run function pandamium:misc/teleport/random/check_in_teleporter

# Spawn effects and no mobs
execute as @a[predicate=pandamium:in_spawn] run function pandamium:misc/spawn_effects
tp @e[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,type=#pandamium:remove_at_spawn,tag=!spawn_protected] 0 -1000 0

execute if score <loop_counter> variable matches 0 run function pandamium:slow_loop

scoreboard players add <loop_counter> variable 1
execute if score <loop_counter> variable matches 5.. run scoreboard players set <loop_counter> variable 0

execute as @a at @s if score @s particles matches 1.. run function pandamium:misc/create_particles

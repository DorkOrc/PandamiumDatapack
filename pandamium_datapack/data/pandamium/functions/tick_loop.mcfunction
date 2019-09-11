scoreboard players add <loop_counter> variable 1
execute if score <loop_counter> variable matches 5.. run scoreboard players set <loop_counter> variable 0
execute if score <loop_counter> variable matches 0 run function pandamium:slow_loop
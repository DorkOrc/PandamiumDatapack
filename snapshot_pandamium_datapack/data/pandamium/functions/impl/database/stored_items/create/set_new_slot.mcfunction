execute store result score <container_x> variable run data get storage pandamium.db:stored_items last_container_x
execute store result score <container_y> variable run data get storage pandamium.db:stored_items last_container_y
execute store result score <container_z> variable run data get storage pandamium.db:stored_items last_container_z
execute store result score <container_slot> variable run data get storage pandamium.db:stored_items last_container_slot

scoreboard players add <container_slot> variable 1

execute if score <container_slot> variable matches 27 run scoreboard players add <container_x> variable 1
execute if score <container_slot> variable matches 27 run scoreboard players set <container_slot> variable 0

execute if score <container_x> variable matches 128016 run scoreboard players add <container_z> variable 1
execute if score <container_x> variable matches 128016 run scoreboard players set <container_x> variable 128000

execute if score <container_z> variable matches 128016 run scoreboard players add <container_y> variable 1
execute if score <container_z> variable matches 128016 run scoreboard players set <container_z> variable 128000

execute store result storage pandamium.db:stored_items selected.entry.x int 1 store result storage pandamium.db:stored_items last_container_x int 1 run scoreboard players get <container_x> variable
execute store result storage pandamium.db:stored_items selected.entry.y int 1 store result storage pandamium.db:stored_items last_container_y int 1 run scoreboard players get <container_y> variable
execute store result storage pandamium.db:stored_items selected.entry.z int 1 store result storage pandamium.db:stored_items last_container_z int 1 run scoreboard players get <container_z> variable
execute store result storage pandamium.db:stored_items selected.entry.slot byte 1 store result storage pandamium.db:stored_items last_container_slot int 1 run scoreboard players get <container_slot> variable

execute store result storage pandamium:local functions."pandamium:impl/drop_inventory/spawn_experience_orbs/*".x_motion double 0.001 run random value -200..200
execute store result storage pandamium:local functions."pandamium:impl/drop_inventory/spawn_experience_orbs/*".y_motion double 0.001 run random value 0..400
execute store result storage pandamium:local functions."pandamium:impl/drop_inventory/spawn_experience_orbs/*".z_motion double 0.001 run random value -200..200
execute if score <value> variable matches 2477.. run scoreboard players set <spawn_value> variable 2477
execute if score <value> variable matches 1237..2476 run scoreboard players set <spawn_value> variable 1237
execute if score <value> variable matches 617..1236 run scoreboard players set <spawn_value> variable 617
execute if score <value> variable matches 307..616 run scoreboard players set <spawn_value> variable 307
execute if score <value> variable matches 149..306 run scoreboard players set <spawn_value> variable 149
execute if score <value> variable matches 73..148 run scoreboard players set <spawn_value> variable 73
execute if score <value> variable matches 37..72 run scoreboard players set <spawn_value> variable 37
execute if score <value> variable matches 17..36 run scoreboard players set <spawn_value> variable 17
execute if score <value> variable matches 7..16 run scoreboard players set <spawn_value> variable 7
execute if score <value> variable matches 3..6 run scoreboard players set <spawn_value> variable 3
execute if score <value> variable matches 1..2 run scoreboard players set <spawn_value> variable 1
execute store result storage pandamium:local functions."pandamium:impl/drop_inventory/spawn_experience_orbs/*".value int 1 run scoreboard players get <spawn_value> variable
function pandamium:impl/drop_inventory/spawn_experience_orbs/spawn with storage pandamium:local functions."pandamium:impl/drop_inventory/spawn_experience_orbs/*"

scoreboard players operation <value> variable -= <spawn_value> variable
execute if score <value> variable matches 1.. run function pandamium:impl/drop_inventory/spawn_experience_orbs/loop

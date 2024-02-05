execute in overworld if predicate pandamium:environment/can_spawn_phantoms as @a[x=0,predicate=!pandamium:in_spawn,gamemode=!creative,predicate=pandamium:player/can_spawn_phantoms] positioned as @s run function pandamium:impl/phantoms/spawn_group_of_phantoms

execute store result storage pandamium:templates macro.value.value int 1 run random value 1200..2400
function pandamium:impl/phantoms/schedule_next_attempt with storage pandamium:templates macro.value

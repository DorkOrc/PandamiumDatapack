$data modify storage pandamium:queue entries append value {action:"leaderboards.refresh.update_user",index:$(index),wait:$(index)}
$data modify storage pandamium:queue entries[-1].username set from storage pandamium.db:players entries[$(index)].username
data modify storage pandamium:queue entries[-1].type set from storage pandamium:temp type

execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players add <index> variable 1
execute if score <index> variable < <length> variable run function pandamium:impl/leaderboards/refresh/queue_loop with storage pandamium:templates macro.index

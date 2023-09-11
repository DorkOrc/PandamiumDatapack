data modify storage pandamium:queue this set from storage pandamium:temp copy_of_queue[0]

execute store result score <wait> variable run data get storage pandamium:queue this.wait
execute store success score <continue> variable if score <wait> variable matches ..0
execute if score <continue> variable matches 0 run function pandamium:impl/queue/run/recycle
execute if score <continue> variable matches 0 run return 0

$function pandamium:impl/queue/actions/$(action) with storage pandamium:queue this

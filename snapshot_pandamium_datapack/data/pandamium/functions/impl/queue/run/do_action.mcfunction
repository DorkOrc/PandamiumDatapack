# arguments: action

execute store result score <queue.wait> variable run data get storage pandamium:queue selected.entry.wait

execute unless data storage pandamium:queue selected.entry.meta{init:1b} run function pandamium:impl/queue/run/init_action with storage pandamium:queue selected.entry

execute if score <queue.wait> variable matches 1.. run return run function pandamium:impl/queue/utils/continue

$function pandamium:impl/queue/actions/$(action)/main with storage pandamium:queue selected.entry

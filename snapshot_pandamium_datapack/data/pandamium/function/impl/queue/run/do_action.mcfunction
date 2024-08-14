# arguments: action

execute if score <seconds_until_restart> global matches 0..2 run return run function pandamium:impl/queue/utils/continue_pending

scoreboard players set <queue.pending> variable 0
execute store result score <queue.wait> variable run data get storage pandamium:queue selected.entry.wait

execute unless data storage pandamium:queue selected.entry.meta{cancel:1b} unless data storage pandamium:queue selected.entry.meta{init:1b} run function pandamium:impl/queue/run/init_action with storage pandamium:queue selected.entry
$execute if data storage pandamium:queue selected.entry.meta{cancel:1b} run return run function pandamium:impl/queue/actions/$(action)/cancel with storage pandamium:queue selected.entry

execute if predicate {condition:"time_check",period:20,value:0} if data storage pandamium:queue selected.entry.meta{do_bossbar:1b} run function pandamium:impl/queue/run/set_bossbar_players with storage pandamium:queue selected.entry.meta

execute if score <queue.wait> variable matches 1.. run return run function pandamium:impl/queue/utils/continue

$function pandamium:impl/queue/actions/$(action)/main with storage pandamium:queue selected.entry
$data modify storage pandamium:queue actions_ran."$(action)" set value 1b

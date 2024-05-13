# arguments: action

execute if data storage pandamium:queue selected.entry.meta{cancel:1b} run return 0

scoreboard players set <queue.pending> variable 0

execute store result score <queue.wait> variable run data get storage pandamium:queue selected.entry.wait

execute unless data storage pandamium:queue selected.entry.meta{init:1b} run function pandamium:impl/queue/run/init_action with storage pandamium:queue selected.entry

execute if score <20_tick_loop> global matches 0 if data storage pandamium:queue selected.entry.meta{do_bossbar:1b} run function pandamium:impl/queue/run/set_bossbar_players with storage pandamium:queue selected.entry.meta

execute if score <queue.wait> variable matches 1.. run return run function pandamium:impl/queue/utils/continue

$function pandamium:impl/queue/actions/$(action)/main with storage pandamium:queue selected.entry

# arguments: index

execute unless score <queue.player_joined> global matches 1 if score <20_tick_loop> global matches 0 if score <queue.pending> variable matches 1 if data storage pandamium:queue selected.entry.meta{do_bossbar:1b} run function pandamium:impl/queue/run/set_bossbar_players with storage pandamium:queue selected.entry.meta

$data modify storage pandamium:queue entries[$(index)] set from storage pandamium:queue selected.entry
data remove storage pandamium:queue selected

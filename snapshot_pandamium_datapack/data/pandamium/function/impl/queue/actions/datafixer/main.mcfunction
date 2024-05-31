#{
#	action: "datafixer",
#	user_ids: [INT, ...]
#}

execute if data storage pandamium:queue actions_ran."datafixer" run return run function pandamium:impl/queue/utils/continue_pending

# process top entry
data modify storage pandamium:templates macro.id.id set from storage pandamium:queue selected.entry.user_ids[-1]
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id

execute if data storage pandamium.db.players:io selected.entry.data.flair run function pandamium:impl/queue/actions/datafixer/fix_flair

# continue
data remove storage pandamium:queue selected.entry.user_ids[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.user_ids[]
execute if data storage pandamium:queue selected.entry.user_ids[0] run return run function pandamium:impl/queue/utils/continue

# end
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer finished]"}

#{
#	action: "datafixer.db.players",
#	user_ids: [...]
#}

execute if data storage pandamium:queue actions_ran."#datafixer" run return run function pandamium:impl/queue/utils/continue_pending
data modify storage pandamium:queue actions_ran."#datafixer" set value 1b

# process top entry
function pandamium:impl/queue/actions/datafixer.db.players/process_top_entry

execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.user_ids[]
execute if data storage pandamium:queue selected.entry.user_ids[-1] run return run function pandamium:impl/queue/utils/continue

# end
function pandamium:utils/log {args:{message:"Finished updating [players] database"}}
tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Finished updating [players] database]"}

#{
#	action: "datafixer",
#	user_ids: [...]
#}

execute if data storage pandamium:queue actions_ran."datafixer" run return run function pandamium:impl/queue/utils/continue_pending

# process top entry
function pandamium:impl/queue/actions/datafixer/process_top_entry

execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.user_ids[]
execute if data storage pandamium:queue selected.entry.user_ids[-1] run return run function pandamium:impl/queue/utils/continue

# end
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer finished]"}

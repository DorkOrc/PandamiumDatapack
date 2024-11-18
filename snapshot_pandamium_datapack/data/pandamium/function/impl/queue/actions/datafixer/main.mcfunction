#{
#	action: "datafixer",
#	regions: [...],
#	chunks: [...],
#	rx: INT,
#	rz: INT,
#	d: INT
#}

execute if data storage pandamium:queue actions_ran."datafixer" run return run function pandamium:impl/queue/utils/continue_pending

# process top chunk and continue
execute if data storage pandamium:queue selected.entry.chunks[0] run return run function pandamium:impl/queue/actions/datafixer/process_chunk

# process top region and continue
execute if data storage pandamium:queue selected.entry.regions[0] run return run function pandamium:impl/queue/actions/datafixer/process_region

# end
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer finished]"}

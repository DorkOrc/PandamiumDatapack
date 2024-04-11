#{
#	action: "database.datafixer",
#	names: [STRING, ...]
#}

# process top entry
data modify storage pandamium:templates macro.name.name set from storage pandamium:queue selected.entry.names[-1]
function pandamium:impl/queue/actions/database.datafixer/with_name with storage pandamium:templace macro.name

# continue
data remove storage pandamium:queue selected.entry.names[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.names[]
execute if data storage pandamium:queue selected.entry.names[0] run return run function pandamium:impl/queue/utils/continue

# end
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer finished]"}

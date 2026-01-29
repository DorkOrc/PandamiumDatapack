#{
#	action: "leader_boards.update_places",
#	type: STRING,
#	usernames: [STRING, ...]
#}

execute if data storage pandamium:queue actions_ran."leader_boards.update_places" run return run function pandamium:impl/queue/utils/continue_pending

# process top entry
data modify storage pandamium:queue selected.entry.username set from storage pandamium:queue selected.entry.usernames[-1]
function pandamium:utils/leader_board/update_place/from_username with storage pandamium:queue selected.entry

# continue
data remove storage pandamium:queue selected.entry.usernames[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.usernames[]
execute if data storage pandamium:queue selected.entry.usernames[0] run return run function pandamium:impl/queue/utils/continue

# end
tellraw @a[scores={send_extra_debug_info=1..}] {color:"gray",italic:true,text:"[Pandamium: Refreshed [",extra:[{storage:"pandamium:queue",nbt:"selected.entry.type",interpret:true},"] leader board]"]}

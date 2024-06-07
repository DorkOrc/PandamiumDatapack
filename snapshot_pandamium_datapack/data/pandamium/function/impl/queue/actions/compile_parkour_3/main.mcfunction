#{
#	action: "compile_parkour_3",
#	user_names: [STRING, ...],
#	source: INT,
#   output: {
#       nbt: [
#           {
#               username: STRING,
#               time_in_seconds: FLOAT,
#               lag_correction_type: INT
#           }
#       ]
#   }
#}

execute if data storage pandamium:queue actions_ran."compile_parkour_3" run return run function pandamium:impl/queue/utils/continue_pending

# process top 3 entries
execute if data storage pandamium:queue selected.entry.usernames[0] run data modify storage pandamium:templates macro.username.username set from storage pandamium:queue selected.entry.usernames[-1]
execute if data storage pandamium:queue selected.entry.usernames[0] run function pandamium:impl/queue/actions/compile_parkour_3/with_username with storage pandamium:templates macro.username
execute if data storage pandamium:queue selected.entry.usernames[0] run data remove storage pandamium:queue selected.entry.usernames[-1]

execute if data storage pandamium:queue selected.entry.usernames[0] run data modify storage pandamium:templates macro.username.username set from storage pandamium:queue selected.entry.usernames[-1]
execute if data storage pandamium:queue selected.entry.usernames[0] run function pandamium:impl/queue/actions/compile_parkour_3/with_username with storage pandamium:templates macro.username
execute if data storage pandamium:queue selected.entry.usernames[0] run data remove storage pandamium:queue selected.entry.usernames[-1]

execute if data storage pandamium:queue selected.entry.usernames[0] run data modify storage pandamium:templates macro.username.username set from storage pandamium:queue selected.entry.usernames[-1]
execute if data storage pandamium:queue selected.entry.usernames[0] run function pandamium:impl/queue/actions/compile_parkour_3/with_username with storage pandamium:templates macro.username
execute if data storage pandamium:queue selected.entry.usernames[0] run data remove storage pandamium:queue selected.entry.usernames[-1]

# continue
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.usernames[]
execute if data storage pandamium:queue selected.entry.usernames[0] run return run function pandamium:impl/queue/utils/continue

# end
data remove storage pandamium:temp json
function pandamium:utils/convert_nbt_to_json with storage pandamium:queue selected.entry.output

$execute unless data storage pandamium:temp json run return run tellraw @a[scores={id=$(source)},limit=1] [{"color":"dark_red","text":"[","extra":[{"storage":"pandamium:queue","nbt":"selected.entry.meta.name","interpret":true},"]"]},{"text":" An error occurred whilst converting output to JSON","color":"red"}]

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:temp","nbt":"json"}'
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/queue/actions/compile_parkour_3/main".escaped_json set string block 3 0 0 front_text.messages[0] 1 -1
data modify storage pandamium:local functions."pandamium:impl/queue/actions/compile_parkour_3/main".source set from storage pandamium:queue selected.entry.source
function pandamium:impl/queue/actions/compile_parkour_3/print_output with storage pandamium:local functions."pandamium:impl/queue/actions/compile_parkour_3/main"

tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Finished [search_nearby_for_homes]]"}

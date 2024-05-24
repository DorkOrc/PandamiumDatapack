#{
#	action: "leaderboards.generate_embed_json",
#	components: [],
#	initial_components_length: 0,
#	output: ""
#}

bossbar add pandamium:queue/leaderboards.generate_embed_json {"text":"[leaderboards.generate_embed_json] Pending"}
bossbar set pandamium:queue/leaderboards.generate_embed_json players @a[scores={send_extra_debug_info=2..}]
execute unless data storage pandamium:queue selected.entry.initial_components_length store result storage pandamium:queue selected.entry.initial_components_length int 1 run data get storage pandamium:queue selected.entry.components

# flatten
data modify storage pandamium:text input set from storage pandamium:queue selected.entry.components[0]
data remove storage pandamium:queue selected.entry.components[0]
function pandamium:utils/text/flatten_json/inclusive

# concatenate
data modify storage pandamium:temp arguments set value {}
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages set value ['{"storage":"pandamium:queue","nbt":"selected.entry.output"}','{"storage":"pandamium:text","nbt":"output"}','""','""']
execute in pandamium:staff_world run data modify storage pandamium:temp arguments.sum set string block 3 0 0 front_text.messages[0] 1 -1
execute in pandamium:staff_world run data modify storage pandamium:temp arguments.this set string block 3 0 0 front_text.messages[1] 1 -1
function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/concatenate_on_iteration with storage pandamium:temp arguments

# bossbar
execute store result score <components_left> variable run data get storage pandamium:queue selected.entry.components
execute store result bossbar pandamium:queue/leaderboards.generate_embed_json max store result score <initial_components_length> variable store result score <progress> variable run data get storage pandamium:queue selected.entry.initial_components_length
execute store result bossbar pandamium:queue/leaderboards.generate_embed_json value run scoreboard players operation <progress> variable -= <components_left> variable
scoreboard players operation <progress> variable *= #100 constant
execute store result storage pandamium:templates macro.percentage.percentage int 1 run scoreboard players operation <progress> variable /= <initial_components_length> variable
function pandamium:impl/queue/actions/leaderboards.generate_embed_json/with_percentage with storage pandamium:templates macro.percentage

# repeat until done
execute if data storage pandamium:queue selected.entry.components[0] run return run function pandamium:impl/queue/utils/continue

# once done
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:queue","nbt":"selected.entry.output"}'
execute in pandamium:staff_world run data modify storage pandamium:queue selected.entry.output set string block 3 0 0 front_text.messages[0] 1 -1
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:queue","nbt":"selected.entry.output"}'
execute in pandamium:staff_world run data modify storage pandamium:queue selected.entry.output set string block 3 0 0 front_text.messages[0] 1 -1

function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/store_copy_to_clipboard_root with storage pandamium:queue selected.entry

bossbar remove pandamium:queue/leaderboards.generate_embed_json
tellraw @a[scores={send_extra_debug_info=2..}] {"text":"[Pandamium: queue/leaderboards.generate_embed_json: Generated and stored copy-to-clipboard root for embed data for previous month leader board]","color":"gray","italic":true}

#{
#	action: "leaderboards/generate_embed_json",
#   source: "Username",
#   components: [],
#   total_initial_components: 0,
#   output: ""
#}

bossbar add pandamium:generate_embed_json_progress {"text":"[Leaderboards] Generating Embed JSON"}
$bossbar set pandamium:generate_embed_json_progress players $(source)
execute unless data storage pandamium:queue this.total_initial_components store result storage pandamium:queue this.total_initial_components int 1 run data get storage pandamium:queue this.components

# flatten
data modify storage pandamium:text input set from storage pandamium:queue this.components[0]
data remove storage pandamium:queue this.components[0]
function pandamium:utils/text/flatten_json/inclusive

# concatenate
data modify storage pandamium:temp arguments set value {}
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages set value ['{"storage":"pandamium:queue","nbt":"this.output"}','{"storage":"pandamium:text","nbt":"output"}','""','""']
execute in pandamium:staff_world run data modify storage pandamium:temp arguments.sum set string block 3 0 0 front_text.messages[0] 1 -1
execute in pandamium:staff_world run data modify storage pandamium:temp arguments.this set string block 3 0 0 front_text.messages[1] 1 -1
function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/concatenate_on_iteration with storage pandamium:temp arguments

# bossbar
execute store result score <components_left> variable run data get storage pandamium:queue this.components
execute store result bossbar pandamium:generate_embed_json_progress max store result score <total_initial_components> variable run data get storage pandamium:queue this.total_initial_components
execute store result bossbar pandamium:generate_embed_json_progress value run scoreboard players operation <total_initial_components> variable -= <components_left> variable

# repeat until done
execute if data storage pandamium:queue this.components[0] run return run function pandamium:impl/queue/run/recycle

# once done
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:queue","nbt":"this.output"}'
execute in pandamium:staff_world run data modify storage pandamium:queue this.output set string block 3 0 0 front_text.messages[0] 1 -1

function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/print_copy_button with storage pandamium:queue this

bossbar remove pandamium:generate_embed_json_progress

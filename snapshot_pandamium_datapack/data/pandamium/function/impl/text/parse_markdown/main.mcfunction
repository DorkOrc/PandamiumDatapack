# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:utils/text/flatten

# initialise substrings list
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*" set value {slice_from:0,slice_to:0,components:[],nodes:[],previous_character:"\n"}
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string set from storage pandamium:text output
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".original_string set from storage pandamium:text output

scoreboard players set <total_components> variable 0

execute store result score <final_index> variable run data get storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string
scoreboard players remove <final_index> variable 1

# parse string
scoreboard players set <index> variable -1
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{original_string:""} run function pandamium:impl/text/parse_markdown/parse_string/loop

scoreboard players add <index> variable 1
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_from store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_from int 1 run scoreboard players get <index> variable
function pandamium:impl/text/parse_markdown/append_string/main

# pair nodes
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".bold_nodes append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[{type:"**"}]
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".bold_nodes[1] run function pandamium:impl/text/parse_markdown/pair_nodes/bold/loop
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_nodes append from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[{type:"*"}]
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_nodes[1] run function pandamium:impl/text/parse_markdown/pair_nodes/italic/loop

execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[1] run function pandamium:impl/text/parse_markdown/pair_nodes/merge_remaining/main

# simplify text components
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".simplified_components set value []
function pandamium:impl/text/parse_markdown/simplify_components/loop

scoreboard players set <root_is_styled> variable 1
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".simplified_components[0].italic unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".simplified_components[0].bold run scoreboard players set <root_is_styled> variable 0
execute if score <root_is_styled> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".simplified_components prepend value ""

# resolve text components
data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".simplified_components
function pandamium:utils/text/input/resolve
data modify storage pandamium:text output set from storage pandamium:text input

execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[1] run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []
function pandamium:impl/text/parse_markdown/parse_string/append_string/main

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 1
scoreboard players add <index> variable 1
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1

# append component and node
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0] run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[].__right__ append value {}
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[0] store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[].__right__[-1] int 1 run scoreboard players get <total_components> variable

function pandamium:impl/text/parse_markdown/parse_string/add_component
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].text set value "*"

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".asterisk_nodes append value {type:"**"}
execute store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".asterisk_nodes[-1].index int 1 run scoreboard players get <last_component_index> variable
execute store success storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".asterisk_nodes[-1].leading byte 1 unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:" "}

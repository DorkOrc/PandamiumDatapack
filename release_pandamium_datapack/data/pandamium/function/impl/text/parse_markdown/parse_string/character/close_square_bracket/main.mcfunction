execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[0] run return 0
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[1] run return run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []

execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{previous_character:" "} run return run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []

data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"("} run return run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []

data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 9
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"(https://"} run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 8
execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"(https://"} unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:"(http://"} run return run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []

# append component and node
function pandamium:impl/text/parse_markdown/parse_string/append_string/main

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[].__right__ append value {}
execute store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[].__right__[-1] int 1 run scoreboard players get <total_components> variable

function pandamium:impl/text/parse_markdown/parse_string/add_component
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].text set value "]("

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes append value {}
execute store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[-1].index int 1 run scoreboard players get <last_component_index> variable

# skip (
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 1
scoreboard players add <index> variable 1

execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[0] run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []

data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".next_character set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".string 0 1
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"{next_character:" "} run return 0

# append component and node
function pandamium:impl/text/parse_markdown/parse_string/append_string/main

function pandamium:impl/text/parse_markdown/parse_string/add_component
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[-1].text set value "["

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes append value {}
execute store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[-1].index int 1 run scoreboard players get <last_component_index> variable

execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[1] run return run data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []

# apply hyperlink
execute store result storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_to int 1 run scoreboard players get <index> variable
function pandamium:impl/text/parse_markdown/parse_string/character/close_bracket/slice with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_style set value {color:"blue",underlined:true,hover_event:{action:"show_text",value:[{color:"dark_gray",text:"Click to visit URL\n\n"},{color:"blue",underlined:true,text:"???"}]},click_event:{action:"open_url",url:""}}
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_style.hover_event.value[1].text set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_style.click_event.url set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice

data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_style
data modify storage pandamium:text input.text set value ""
function pandamium:utils/text/input/resolve
execute if data storage pandamium:text {input:""} run return run function pandamium:impl/text/parse_markdown/parse_string/character/close_bracket/invalid

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".left_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[0].index
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".right_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes[1].index
function pandamium:impl/text/parse_markdown/parse_string/character/close_bracket/apply_style with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".hyperlink_nodes set value []
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_from

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".left_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[0].index
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".right_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[1].index
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".remaining_italic_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[{type:"*"}].index
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".remaining_bold_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[{type:"**"}].index

function pandamium:impl/text/parse_markdown/pair_nodes/merge_remaining/update_text with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".left_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".bold_asterisk_nodes[0].index
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".right_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".bold_asterisk_nodes[1].index

function pandamium:impl/text/parse_markdown/pair_asterisk_nodes/bold/apply_style with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

# loop
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".bold_asterisk_nodes[0]
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".bold_asterisk_nodes[1]
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".bold_asterisk_nodes[1] run function pandamium:impl/text/parse_markdown/pair_asterisk_nodes/bold/loop

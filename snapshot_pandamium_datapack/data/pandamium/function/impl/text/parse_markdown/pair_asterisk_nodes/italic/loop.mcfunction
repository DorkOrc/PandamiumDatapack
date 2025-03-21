execute store result score <leading> variable run data get storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_asterisk_nodes[0].leading
execute if score <leading> variable matches 0 run return run function pandamium:impl/text/parse_markdown/pair_asterisk_nodes/italic/skip

data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".left_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_asterisk_nodes[0].index
data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".right_node_index set from storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_asterisk_nodes[1].index

function pandamium:impl/text/parse_markdown/pair_asterisk_nodes/italic/apply_style with storage pandamium:local functions."pandamium:impl/text/parse_markdown/*"

# loop
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_asterisk_nodes[0]
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_asterisk_nodes[0]
execute if data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".italic_asterisk_nodes[1] run function pandamium:impl/text/parse_markdown/pair_asterisk_nodes/italic/loop

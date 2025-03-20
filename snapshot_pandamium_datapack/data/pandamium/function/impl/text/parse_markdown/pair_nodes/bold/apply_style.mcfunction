# arguments: left_node_index, right_node_index

$execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[{__left__:[$(left_node_index)],__right__:[$(right_node_index)]}] run return fail

$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[$(left_node_index)].text set value ""
$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[$(right_node_index)].text set value ""
$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[{__left__:[$(left_node_index)],__right__:[$(right_node_index)]}].bold set value true
$data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[{index:$(left_node_index)}]
$data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".nodes[{index:$(right_node_index)}]

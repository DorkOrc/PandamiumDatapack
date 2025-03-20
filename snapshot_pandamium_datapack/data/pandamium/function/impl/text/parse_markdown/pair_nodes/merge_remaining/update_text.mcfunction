# arguments: remaining_italic_node_index, remaining_bold_node_index, left_node_index, right_node_index

$execute unless data storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[{__left__:[$(left_node_index)],__right__:[$(right_node_index)]}] run return fail

$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[$(remaining_italic_node_index)].text set value ""
$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[$(remaining_bold_node_index)].text set value "*"
$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".components[{__left__:[$(left_node_index)],__right__:[$(right_node_index)]}].italic set value true

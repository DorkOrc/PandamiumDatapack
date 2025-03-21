# arguments: slice_from

$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".original_string $(slice_from)
data remove storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice_from

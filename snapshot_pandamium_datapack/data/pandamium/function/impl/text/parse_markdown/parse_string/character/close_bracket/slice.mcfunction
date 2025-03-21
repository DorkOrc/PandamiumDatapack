# arguments: slice_from, slice_to

$data modify storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".slice set string storage pandamium:local functions."pandamium:impl/text/parse_markdown/*".original_string $(slice_from) $(slice_to)

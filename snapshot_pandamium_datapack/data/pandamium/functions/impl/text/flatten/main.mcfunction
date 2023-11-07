# in: storage pandamium:text input
# out: storage pandamium:text output

function pandamium:impl/text/resolve_input/main
function pandamium:utils/text/get_compound
function pandamium:impl/text/get_substrings_from_compound/main
function pandamium:impl/text/flatten/concatenate_substrings/main
data modify storage pandamium:text output set from storage pandamium:temp arguments.output

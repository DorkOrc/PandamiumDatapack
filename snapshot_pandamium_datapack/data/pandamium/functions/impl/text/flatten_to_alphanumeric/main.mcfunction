# in: storage pandamium:text input
# out: storage pandamium:text output

function pandamium:impl/text/resolve_input/main
function pandamium:utils/text/get_compound
function pandamium:impl/text/get_substrings_from_compound/main
execute unless data storage pandamium:text substrings[0] run data modify storage pandamium:text substrings set value ["_"]
function pandamium:impl/text/flatten_to_alphanumeric/get_characters_from_substrings/main
function pandamium:impl/text/flatten_to_alphanumeric/concatenate_characters with storage pandamium:text concat

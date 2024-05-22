# in: storage pandamium:text input
# out: storage pandamium:text output

function pandamium:impl/text/resolve_input/main
function pandamium:utils/text/get_compound_and_lines
function pandamium:impl/text/get_substrings_from_compound/main
function pandamium:impl/text/flatten_inclusive/get_characters_from_substrings/main
function pandamium:impl/text/flatten_inclusive/concatenate_characters with storage pandamium:text concat

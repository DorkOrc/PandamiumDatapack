# in: storage pandamium:text input
# out: storage pandamium:text output

function pandamium:impl/text/resolve_input/main
function pandamium:utils/text/get_compound
function pandamium:impl/text/get_substrings_from_compound/main
function pandamium:impl/text/remove_formatting/get_characters_from_substrings/main
function pandamium:impl/text/remove_formatting/concatenate_characters with storage pandamium:text concat

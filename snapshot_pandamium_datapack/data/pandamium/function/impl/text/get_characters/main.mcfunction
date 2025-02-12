# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:impl/text/get_substrings/main

data modify storage pandamium:text output set value []
function pandamium:impl/text/get_characters/loop

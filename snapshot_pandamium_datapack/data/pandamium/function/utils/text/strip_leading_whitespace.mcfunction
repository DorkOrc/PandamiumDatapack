# input: 
# - storage pandamium:text input
# output: 
# - storage pandamium:text output

data modify storage pandamium:text strip_characters set value {type:"whitespace"}
scoreboard players set <leading_or_trailing> variable 0
function pandamium:impl/text/strip_characters/main

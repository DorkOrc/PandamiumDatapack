# input:
# - storage pandamium:text input
# - storage pandamium:text strip_characters
# - score <leading_or_trailing> variable {0,1}
# output:
# - storage pandamium:text output

# validate inputs
execute unless score <leading_or_trailing> variable matches 0..1 run return fail
execute unless data storage pandamium:text strip_characters[0] unless data storage pandamium:text {strip_characters:{type:"whitespace"}} run return fail

# flatten input
function pandamium:utils/text/flatten
execute if data storage pandamium:text {output:""} run return 1

# strip characters
execute if score <leading_or_trailing> variable matches 0 run data modify storage pandamium:local functions."pandamium:impl/text/strip_characters/*".this_character set string storage pandamium:text output 0 1
execute if score <leading_or_trailing> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/strip_characters/*".this_character set string storage pandamium:text output -1

# loop (whitespace)
execute if data storage pandamium:text strip_characters{type:"whitespace"} run return run function pandamium:impl/text/strip_characters/loop_whitespace
# loop (single character)
execute unless data storage pandamium:text strip_characters[1] run return run function pandamium:impl/text/strip_characters/loop_simple
# loop (other)
execute if data storage pandamium:local functions."pandamium:impl/text/strip_characters/*"{this_character:'\\'} run data modify storage pandamium:local functions."pandamium:impl/text/strip_characters/*".this_character set value "\\\\"
execute if data storage pandamium:local functions."pandamium:impl/text/strip_characters/*"{this_character:'"'} run data modify storage pandamium:local functions."pandamium:impl/text/strip_characters/*".this_character set value '\\"'
return run function pandamium:impl/text/strip_characters/loop_custom with storage pandamium:local functions."pandamium:impl/text/strip_characters/*"

# if this character should not be stripped, end the loop
execute \
    unless data storage pandamium:local functions."pandamium:impl/text/strip_characters/*"{this_character:" "} \
    unless data storage pandamium:local functions."pandamium:impl/text/strip_characters/*"{this_character:"\n"} \
    unless data storage pandamium:local functions."pandamium:impl/text/strip_characters/*"{this_character:"\u200c"} \
        run return 1

# otherwise, remove the leading/trailing character
execute if score <leading_or_trailing> variable matches 0 run data modify storage pandamium:text output set string storage pandamium:text output 1
execute if score <leading_or_trailing> variable matches 1 run data modify storage pandamium:text output set string storage pandamium:text output 0 -1

# continue looping unless the string is empty
execute if data storage pandamium:text {output:""} run return 1

execute if score <leading_or_trailing> variable matches 0 run data modify storage pandamium:local functions."pandamium:impl/text/strip_characters/*".this_character set string storage pandamium:text output 0 1
execute if score <leading_or_trailing> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/strip_characters/*".this_character set string storage pandamium:text output -1
return run function pandamium:impl/text/strip_characters/loop_whitespace

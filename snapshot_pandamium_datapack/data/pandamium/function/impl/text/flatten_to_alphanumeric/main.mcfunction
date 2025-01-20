# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

# get characters
function pandamium:impl/text/get_characters/main

# if there are no characters present, output a single underscore character
execute unless data storage pandamium:text output[0] run return run data modify storage pandamium:text output set value "_"

# initialise values
data modify storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".result set value ""
data modify storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".characters set from storage pandamium:text output

# validate characters
data modify storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".this_character set from storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".characters[-1]
data remove storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".characters[-1]
function pandamium:impl/text/flatten_to_alphanumeric/loop with storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*"

# output result
data modify storage pandamium:text output set from storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".result

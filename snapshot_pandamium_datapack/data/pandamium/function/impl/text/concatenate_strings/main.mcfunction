# inputs:
# - storage pandamium:text input
# outputs:
# - storage pandamium:text output

# Validate Input
# must be a list of strings. Otherwise, return an empty string
execute unless data storage pandamium:text input[0] run return run data modify storage pandamium:text output set value ""

data remove storage pandamium:local functions."pandamium:impl/text/*".type_check
data modify storage pandamium:local functions."pandamium:impl/text/*".type_check set string storage pandamium:text input[0]
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/text/*".type_check set from storage pandamium:text input[0]
execute if score <non_string> variable matches 1 run return run data modify storage pandamium:text output set value ""

# if there is only one string in the list, simply return that
execute unless data storage pandamium:text input[1] run return run data modify storage pandamium:text output set from storage pandamium:text input[0]

# Set Up Concatenation
data modify storage pandamium:local functions."pandamium:impl/text/*".compound set value {}
data modify storage pandamium:local functions."pandamium:impl/text/*".strings set from storage pandamium:text input
execute in pandamium:staff_world run item replace block 5 1 0 contents with stone

# Do Concatenate
# insert escape sequences
data modify storage pandamium:local functions."pandamium:impl/text/*".compound._ set from storage pandamium:local functions."pandamium:impl/text/*".strings[0]
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/*".stringified_compound set from block 5 1 0 item.components.minecraft:custom_name
data modify storage pandamium:local functions."pandamium:impl/text/*".prefix set string storage pandamium:local functions."pandamium:impl/text/*".stringified_compound 4 -2

# insert single-quote at the beginning to force double-quote wrapping
data modify storage pandamium:local functions."pandamium:impl/text/*".quote_type set string storage pandamium:local functions."pandamium:impl/text/*".stringified_compound 3 4
execute store success score <quote_type> variable if data storage pandamium:local functions."pandamium:impl/text/*"{quote_type:'"'}
execute if score <quote_type> variable matches 0 run function pandamium:impl/text/concatenate_strings/prefix/if_single_quoted with storage pandamium:local functions."pandamium:impl/text/*"
execute if score <quote_type> variable matches 1 run function pandamium:impl/text/concatenate_strings/prefix/if_double_quoted with storage pandamium:local functions."pandamium:impl/text/*"
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/*".prefix set string block 5 1 0 item.components.minecraft:custom_name 4 -2
# note: The first ' or " character in the string determines which type of wrapping is used (defaults to " if not present). 
#       The step of inserting a ' at the beginning forces the "prefix" to always be wrapped in single-quotes, so we only need to worry about the subsequent "suffixes" on each iteration

# loop through the suffixes
data remove storage pandamium:local functions."pandamium:impl/text/*".strings[0]
function pandamium:impl/text/concatenate_strings/loop

# output (cut out the leading single-quote that was added artificially)
data modify storage pandamium:text output set string storage pandamium:local functions."pandamium:impl/text/*".prefix 1

# inputs:
# - storage pandamium:text input
# - storage pandamium:text args
# outputs:
# - storage pandamium:text output

# Inserts backslashes in front of " and \ characters, and has the side-effect of escaping characters such as newlines (\n), horizontal tabs (\t), etc.

# Validate Input
# must be a list of strings. Otherwise, return an empty string
execute unless data storage pandamium:text input run return run data modify storage pandamium:text output set value ""

# set up data
data modify storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".compound set value {}
execute in pandamium:staff_world run item replace block 5 1 0 contents with stone

# insert escape sequences
data modify storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".compound._ set from storage pandamium:text input
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/escape_double_quotes/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".stringified_compound set from block 5 1 0 item.components.minecraft:custom_name
data modify storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".content set string storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".stringified_compound 4 -2

# convert to double-quote-wrapped string if single-quote-wrapped
data modify storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".quote_type set string storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".stringified_compound 3 4
execute if data storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*"{quote_type:"'"} run function pandamium:impl/text/escape_double_quotes/fix_quote_type with storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*"

# output
data modify storage pandamium:text output set from storage pandamium:local functions."pandamium:impl/text/escape_double_quotes/*".content

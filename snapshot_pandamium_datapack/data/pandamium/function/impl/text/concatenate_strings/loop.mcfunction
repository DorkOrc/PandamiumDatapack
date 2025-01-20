# insert escape sequences
data modify storage pandamium:local functions."pandamium:impl/text/*".compound._ set from storage pandamium:local functions."pandamium:impl/text/*".strings[0]
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/*".stringified_compound set from block 5 1 0 item.components.minecraft:custom_name
data modify storage pandamium:local functions."pandamium:impl/text/*".suffix set string storage pandamium:local functions."pandamium:impl/text/*".stringified_compound 4 -2

# convert to double-quote-wrapped string if single-quote-wrapped
data modify storage pandamium:local functions."pandamium:impl/text/*".quote_type set string storage pandamium:local functions."pandamium:impl/text/*".stringified_compound 3 4
execute if data storage pandamium:local functions."pandamium:impl/text/*"{quote_type:"'"} run function pandamium:impl/text/concatenate_strings/fix_suffix_quote_type with storage pandamium:local functions."pandamium:impl/text/*"

# concatenate suffix onto prefix
function pandamium:impl/text/concatenate_strings/concatenate_suffix with storage pandamium:local functions."pandamium:impl/text/*"

# end loop if there are no more strings to concatenate
execute unless data storage pandamium:local functions."pandamium:impl/text/*".strings[1] run return 0

# re-escape prefix
data modify storage pandamium:local functions."pandamium:impl/text/*".compound._ set from storage pandamium:local functions."pandamium:impl/text/*".prefix
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/*".prefix set string block 5 1 0 item.components.minecraft:custom_name 4 -2

# loop
data remove storage pandamium:local functions."pandamium:impl/text/*".strings[0]
function pandamium:impl/text/concatenate_strings/loop

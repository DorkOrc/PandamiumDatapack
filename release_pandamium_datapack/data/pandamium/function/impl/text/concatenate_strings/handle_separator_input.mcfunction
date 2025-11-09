data remove storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".type_check
data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".type_check set string storage pandamium:text args[0]
execute store success score <non_string> variable run data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".type_check set from storage pandamium:text args[0]
execute if score <non_string> variable matches 1 run return run data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".separator set value ""

data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".compound._ set from storage pandamium:text args[0]
execute in pandamium:staff_world run item modify block 5 1 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:impl/text/concatenate_strings/*".compound'}}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".stringified_compound set from block 5 1 0 item.components.minecraft:custom_name
data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".separator set string storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".stringified_compound 4 -2

data modify storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".quote_type set string storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*".stringified_compound 3 4
execute if data storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*"{quote_type:"'"} run function pandamium:impl/text/concatenate_strings/fix_separator_quote_type with storage pandamium:local functions."pandamium:impl/text/concatenate_strings/*"

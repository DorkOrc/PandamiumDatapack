# input:
# - storage pandamium:text input
# output:
# - storage pandamium:text output

function pandamium:impl/text/convert_json_to_nbt/main
execute unless data storage pandamium:text output run return fail

data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root set from storage pandamium:text output
data remove storage pandamium:text output

#
data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack set value []

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root{} run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"{}"}
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:""}

# resolve
data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root
function pandamium:utils/text/input/resolve
data modify storage pandamium:text output set from storage pandamium:text input

return 1

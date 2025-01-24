data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0]
function pandamium:impl/text/convert_json_to_nbt/main
data modify storage pandamium:text input set from storage pandamium:text output
function pandamium:utils/text/input/force_compound
data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].lore append from storage pandamium:text input
data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0]

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/loop_lore

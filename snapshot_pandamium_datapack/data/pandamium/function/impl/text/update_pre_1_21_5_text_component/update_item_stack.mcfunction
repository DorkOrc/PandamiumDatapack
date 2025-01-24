# arguments: path

# append to stack
data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack append value {}
$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path)

# handle name
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:custom_name run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:custom_name
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:custom_name run function pandamium:impl/text/convert_json_to_nbt/main
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:custom_name run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:custom_name set from storage pandamium:text output
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:custom_name run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"$(path).components.minecraft:custom_name"}

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:item_name run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:item_name
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:item_name run function pandamium:impl/text/convert_json_to_nbt/main
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:item_name run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:item_name set from storage pandamium:text output
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:item_name run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"$(path).components.minecraft:item_name"}

# handle lore
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0] run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.lore set value []
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/loop_lore
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0] run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:lore set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.lore
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:"$(path).components.minecraft:lore"}

# handle containers
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[0].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:container[0].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[1].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:container[1].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[2].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:container[2].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[3].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:container[3].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[4].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:container[4].item"}

$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:bundle_contents[0]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[1] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:bundle_contents[1]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[2] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:bundle_contents[2]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[3] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:bundle_contents[3]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[4] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).components.minecraft:bundle_contents[4]"}

# return from stack
data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1]

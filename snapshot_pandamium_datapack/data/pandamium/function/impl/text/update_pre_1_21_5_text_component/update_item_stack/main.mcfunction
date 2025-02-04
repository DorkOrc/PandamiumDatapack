# arguments: path

# append to stack
data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack append value {}
$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path)

# handle hide_additional_tooltip
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:hide_additional_tooltip run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/hide_additional_tooltip
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:hide_additional_tooltip run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:tooltip_display set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].tooltip_display
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:hide_additional_tooltip run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:hide_additional_tooltip

# handle enchantments
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:enchantments run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:enchantments set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:enchantments.levels

# handle stored_enchantments
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:stored_enchantments run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:stored_enchantments set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:stored_enchantments.levels

# handle attribute_modifiers
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:attribute_modifiers run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:attribute_modifiers set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:attribute_modifiers.modifiers

# handle dyed_color
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:dyed_color run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:dyed_color set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:dyed_color.rgb

# handle written_book_content
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:written_book_content.title.text run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:written_book_content.title.raw set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:written_book_content.title.text
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:written_book_content.title.text run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:written_book_content.title.text

# handle custom_name
execute store success score <update_custom_name> variable if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:custom_name
execute if score <update_custom_name> variable matches 1 run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:custom_name
execute if score <update_custom_name> variable matches 1 run function pandamium:impl/text/convert_json_to_nbt/main
$execute if score <update_custom_name> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:custom_name set from storage pandamium:text output
$execute if score <update_custom_name> variable matches 1 run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"$(path).components.minecraft:custom_name"}

execute store success score <update_item_name> variable if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:item_name
execute if score <update_item_name> variable matches 1 run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:item_name
execute if score <update_item_name> variable matches 1 run function pandamium:impl/text/convert_json_to_nbt/main
$execute if score <update_item_name> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:item_name set from storage pandamium:text output
$execute if score <update_item_name> variable matches 1 run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"$(path).components.minecraft:item_name"}

# handle lore
execute store success score <update_lore> variable if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:lore[0]
execute if score <update_lore> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].lore set value []
execute if score <update_lore> variable matches 1 run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/lore_loop
$execute if score <update_lore> variable matches 1 run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).components.minecraft:lore set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].lore
$execute if score <update_lore> variable matches 1 run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:"$(path).components.minecraft:lore"}

# handle containers
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[0].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:container[0].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[1].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:container[1].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[2].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:container[2].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[3].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:container[3].item"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:container[4].item run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:container[4].item"}

$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:bundle_contents[0]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[1] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:bundle_contents[1]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[2] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:bundle_contents[2]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[3] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:bundle_contents[3]"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.components.minecraft:bundle_contents[4] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack/main {path:"$(path).components.minecraft:bundle_contents[4]"}

# return from stack
data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1]

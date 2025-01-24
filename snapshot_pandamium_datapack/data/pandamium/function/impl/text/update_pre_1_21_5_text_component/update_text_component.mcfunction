# arguments: path

# append to stack
data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack append value {}
$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path)

# handle hover events
data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hoverEvent

data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.value set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.contents
data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.contents

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_item"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.id set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.value
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_item"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event merge from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.value
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_item"} run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.value

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_entity"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.uuid set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.value.id
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_entity"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.id set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.value.type
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_entity"} run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event.value

$data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).hoverEvent
$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).hover_event set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event

$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_text"} run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"$(path).hover_event.value"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.hover_event{action:"show_item"} run function pandamium:impl/text/update_pre_1_21_5_text_component/update_item_stack {path:"$(path).hover_event"}

# handle click events
data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.clickEvent

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"open_url"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.url set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.value
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"open_url"} run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.value

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"run_command"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.command set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.value
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"run_command"} run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.value
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"run_command"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".char_1 set string storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.command 0 1
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"run_command"} if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*"{char_1:"/"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.command set string storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.command 1

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"suggest_command"} run data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.command set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.value
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"suggest_command"} run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.value

execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"change_page"} run function pandamium:impl/text/update_pre_1_21_5_text_component/convert_page_number with storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event
execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event{action:"change_page"} run data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event.value

$data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).clickEvent
$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path).click_event set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.click_event

# handle children
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:"$(path)"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.extra[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:"$(path).extra"}
$execute if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value.with[0] run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:"$(path).with"}

# return from stack
data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1]

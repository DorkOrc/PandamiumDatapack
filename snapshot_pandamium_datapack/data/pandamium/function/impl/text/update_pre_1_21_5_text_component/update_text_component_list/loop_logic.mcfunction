# arguments: path, index

$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value_at_index set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path)[$(index)]
execute store success score <empty_key> variable if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value_at_index.""

$execute if score <empty_key> variable matches 0 if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value_at_index{} run return run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"$(path)[$(index)]"}
$execute if score <empty_key> variable matches 1 if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value_at_index.""{} run return run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component {path:"$(path)[$(index)].''"}

$execute if score <empty_key> variable matches 0 if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value_at_index[0] run return run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:"$(path)[$(index)]"}
$execute if score <empty_key> variable matches 1 if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value_at_index.""[0] run return run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/main {path:"$(path)[$(index)].''"}

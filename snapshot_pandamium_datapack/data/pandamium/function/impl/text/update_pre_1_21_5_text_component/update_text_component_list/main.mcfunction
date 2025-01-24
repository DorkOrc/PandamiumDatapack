# arguments: path

# append to stack
$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack append value {path:"$(path)",index:0}
$data modify storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value set from storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".root$(path)

# loop
execute store result score <length> variable store result storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].length int 1 if data storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].value[]
execute if score <length> variable matches 1.. run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/loop

# return from stack
data remove storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1]

function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/loop_logic with storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1]

execute store result score <index> variable run data get storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].index
execute store result storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].index int 1 run scoreboard players add <index> variable 1

execute store result score <length> variable run data get storage pandamium:local functions."pandamium:impl/text/update_pre_1_21_5_text_component/*".stack[-1].length
execute if score <index> variable < <length> variable run function pandamium:impl/text/update_pre_1_21_5_text_component/update_text_component_list/loop

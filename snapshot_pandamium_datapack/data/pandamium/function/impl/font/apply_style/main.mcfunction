## Pre
data modify storage pandamium:text input set from storage pandamium:temp text
function pandamium:utils/text/get_compound

## Modify Compound
scoreboard players set <valid_option> variable -1
execute store result score <valid_option> variable run function pandamium:impl/font/apply_style/modify_compound
execute if score <valid_option> variable matches 0..1 run scoreboard players set <valid_option> variable 1

## Post
execute if score <valid_option> variable matches 1 in pandamium:staff_world run function pandamium:impl/font/apply_style/convert_to_json with storage pandamium:text {}

# input:
# - storage pandamium:temp text
# output:
# - storage pandamium:temp text

data modify storage do:io input set from storage pandamium:temp text
function do:text/resolve
data remove storage pandamium:text result
execute if data storage do:io output{} run data modify storage pandamium:text result set from storage do:io output
execute unless data storage do:io output{} run data modify storage pandamium:text result.text set from storage do:io output

# modify
scoreboard players set <valid_option> variable -1
execute store result score <valid_option> variable run function pandamium:impl/font/apply_style/modify_compound
execute store success score <valid_option> variable if score <valid_option> variable matches 0..1

# resolve and copy back to storage pandamium:temp text
execute if score <valid_option> variable matches 1 run data modify storage do:io input set from storage pandamium:text result
execute if score <valid_option> variable matches 1 run function do:text/resolve
execute if score <valid_option> variable matches 1 run data modify storage pandamium:temp text set from storage do:io output

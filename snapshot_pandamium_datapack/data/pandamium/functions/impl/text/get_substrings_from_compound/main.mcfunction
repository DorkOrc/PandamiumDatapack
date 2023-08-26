data modify storage pandamium:temp stack set value []
data modify storage pandamium:temp stack append from storage pandamium:text compound
data modify storage pandamium:text substrings set value []
execute if data storage pandamium:temp stack[0] run function pandamium:impl/text/get_substrings_from_compound/loop

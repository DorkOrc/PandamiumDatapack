data modify storage pandamium:temp this_substring set from storage pandamium:temp stack[0].text
execute unless data storage pandamium:temp {this_substring:''} run data modify storage pandamium:text substrings append from storage pandamium:temp this_substring

data modify storage pandamium:temp stack insert 1 from storage pandamium:temp stack[0].extra[]

data remove storage pandamium:temp stack[0]
execute if data storage pandamium:temp stack[0] run function pandamium:impl/text/get_substrings_from_compound/loop

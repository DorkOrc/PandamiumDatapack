data modify storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component set from storage pandamium:local functions."pandamium:impl/text/get_substrings/*".stack[0]

# handle strings
execute unless data storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component{} unless data storage pandamium:local functions."pandamium:impl/text/get_substrings/*"{this_component:""} run data modify storage pandamium:text substrings append from storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component

# handle compounds
execute if data storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component.text unless data storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component{text:""} run data modify storage pandamium:text substrings append from storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component.text
execute if data storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component.extra[0] run data modify storage pandamium:local functions."pandamium:impl/text/get_substrings/*".stack insert 1 from storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component.extra[0]

# loop
data remove storage pandamium:local functions."pandamium:impl/text/get_substrings/*".stack[0]
execute if data storage pandamium:local functions."pandamium:impl/text/get_substrings/*".stack[0] run function pandamium:impl/text/get_substrings/loop

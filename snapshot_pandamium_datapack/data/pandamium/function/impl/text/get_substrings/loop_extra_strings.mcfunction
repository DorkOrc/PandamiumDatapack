data modify storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_string set from storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component.extra[0]
execute unless data storage pandamium:local functions."pandamium:impl/text/get_substrings/*"{this_string:""} run data modify storage pandamium:text substrings append from storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_string

data remove storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component.extra[0]
execute if data storage pandamium:local functions."pandamium:impl/text/get_substrings/*".this_component.extra[0] run function pandamium:impl/text/get_substrings/loop_extra_strings

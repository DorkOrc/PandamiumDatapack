data modify storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".this_component set from storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".stack[0]

# get object type
execute store success score <type_is_compound> variable if data storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".this_component{}

# handle strings
execute if score <type_is_compound> variable matches 0 store result score <string_length> variable run data get storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".this_component
execute if score <type_is_compound> variable matches 0 if score <string_length> variable matches 1.. run return 1

# handle compounds containing text
execute if score <type_is_compound> variable matches 1 store result score <string_length> variable run data get storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".this_component.text
execute if score <type_is_compound> variable matches 1 if score <string_length> variable matches 1.. run return 1
execute if score <type_is_compound> variable matches 1 if score <string_length> variable matches 0 if data storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".this_component.translate run return 1
execute if score <type_is_compound> variable matches 1 if score <string_length> variable matches 0 if data storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".this_component.keybind run return 1

# append extra components to stack
data modify storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".stack append from storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".this_component.extra[]

# loop
data remove storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".stack[0]
execute if data storage pandamium:local functions."pandamium:impl/text/test_non_empty/*".stack[0] run return run function pandamium:impl/text/test_non_empty/loop

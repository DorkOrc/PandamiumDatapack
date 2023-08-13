data modify storage pandamium:temp this_char set string storage pandamium:temp this_component 0 1
execute if data storage pandamium:temp {this_char:"\""} run data modify storage pandamium:temp this_char set value "''"
execute if data storage pandamium:temp {this_char:"\\"} run data modify storage pandamium:temp this_char set value "⧹"
data modify storage pandamium:temp chars append from storage pandamium:temp this_char

data modify storage pandamium:temp this_component set string storage pandamium:temp this_component 1
execute if data storage pandamium:temp {this_component:""} run data remove storage pandamium:temp components[0]
execute if data storage pandamium:temp {this_component:""} run data modify storage pandamium:temp this_component set from storage pandamium:temp components[0]
execute if data storage pandamium:temp components[0] run function pandamium:triggers/namehome/concatenate/loop_get_chars

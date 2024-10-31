execute if data storage pandamium:temp push_source{type:"integer"} run data modify storage pandamium:temp push_source.converted_value set string storage pandamium:temp push_source.value
execute if data storage pandamium:temp push_source{type:"float"} run data modify storage pandamium:temp push_source.converted_value set string storage pandamium:temp push_source.value 0 -1
execute if data storage pandamium:temp push_source{type:"boolean"} run data modify storage pandamium:temp push_source.converted_value set string storage pandamium:temp push_source.value 0 -1

data modify storage pandamium:temp push_source.type set value "compound"
data modify storage pandamium:temp push_source.value set value {}
data modify storage pandamium:temp push_source.value.text set from storage pandamium:temp push_source.converted_value

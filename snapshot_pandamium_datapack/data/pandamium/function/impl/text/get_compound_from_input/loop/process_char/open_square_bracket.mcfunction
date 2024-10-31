data modify storage pandamium:temp previous_object set from storage pandamium:temp stack[-1]

data modify storage pandamium:temp stack append value {type:"list",expect:1b,value:[]}

execute if data storage pandamium:temp previous_object{type:"keyword",keyword:"with"} run data modify storage pandamium:temp stack[-1].accept_any_type set value 1b

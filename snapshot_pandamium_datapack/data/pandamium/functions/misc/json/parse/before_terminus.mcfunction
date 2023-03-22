execute if data storage pandamium:json {char:'}'} if data storage pandamium:json stack[-1].flags{hover_event:1b} run function pandamium:misc/json/parse/before_terminus/terminate_hover_event
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:'}'} run function pandamium:misc/json/parse/before_terminus/terminate
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:']'} run function pandamium:misc/json/parse/before_terminus/terminate

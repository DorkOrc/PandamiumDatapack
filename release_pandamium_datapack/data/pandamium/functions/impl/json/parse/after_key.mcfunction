execute if data storage pandamium:json {char:'"'} run function pandamium:impl/json/parse/after_key/read_string
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:'{'} run function pandamium:impl/json/parse/after_key/open_compound
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:'['} run function pandamium:impl/json/parse/after_key/open_list
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:'t'} run function pandamium:impl/json/parse/after_key/read_bool
execute if score <recognised> variable matches 0 if data storage pandamium:json {char:'f'} run function pandamium:impl/json/parse/after_key/read_bool

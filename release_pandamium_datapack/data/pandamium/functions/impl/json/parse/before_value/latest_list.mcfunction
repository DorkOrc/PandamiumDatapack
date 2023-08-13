execute if data storage pandamium:json {char:'"'} run function pandamium:impl/json/parse/before_value/latest_list/read_plain_text
execute if data storage pandamium:json {char:'{'} run function pandamium:impl/json/parse/before_value/latest_list/append_compound
execute if data storage pandamium:json {char:'['} run function pandamium:impl/json/parse/before_value/latest_list/append_list

execute if data storage pandamium:json stack[-1].flags{is_list:1b} run function pandamium:impl/json/parse/before_value/latest_list
execute unless data storage pandamium:json stack[-1].flags{is_list:1b} if data storage pandamium:json {char:'"'} run function pandamium:impl/json/parse/before_value/latest_compound

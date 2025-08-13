execute if data storage pandamium:temp last{expect:0b} run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected string"}'}
execute if data storage pandamium:temp last{expect:0b} run return 0

execute if data storage pandamium:temp last{type:"compound"} run function pandamium:impl/text/get_compound_from_input/loop/process_char/quote_mark/in_compound
execute if data storage pandamium:temp last{type:"compound"} run return 0
execute if data storage pandamium:temp last{type:"keyword"} run function pandamium:impl/text/get_compound_from_input/loop/process_char/quote_mark/in_keyword
execute if data storage pandamium:temp last{type:"keyword"} run return 0
execute if data storage pandamium:temp last{type:"list"} run function pandamium:impl/text/get_compound_from_input/loop/process_char/quote_mark/in_list
execute if data storage pandamium:temp last{type:"list"} run return 0

execute if data storage pandamium:temp stack[0] run function pandamium:impl/text/get_compound_from_input/raise_error {message:'{"text":"Unexpected string"}'}
execute if data storage pandamium:temp stack[0] run return 0

function pandamium:impl/text/get_compound_from_input/read_string/main

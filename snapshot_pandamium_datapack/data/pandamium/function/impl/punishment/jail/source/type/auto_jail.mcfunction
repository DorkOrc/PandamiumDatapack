# arguments: username

# log

data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:impl/punishment/jail/*".source.reason
function pandamium:utils/text/escape_double_quotes
data modify storage pandamium:text input set value ['{"type":"auto_jail","reason":"',{storage:"pandamium:text",nbt:"output"},'"}']
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".log_source_json set from storage pandamium:text input

# success
return 1

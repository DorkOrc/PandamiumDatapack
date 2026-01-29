# arguments: username

# log
data modify storage do:io input set value {type:"auto_jail"}
data modify storage do:io input.reason set from storage pandamium:local functions."pandamium:impl/punishment/jail/*".source.reason
function do:nbt/write_json
data modify storage pandamium:local functions."pandamium:impl/punishment/jail/*".log_source_json set from storage do:io output

# success
return 1

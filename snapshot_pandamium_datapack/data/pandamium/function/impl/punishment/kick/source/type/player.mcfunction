# arguments: username

# log
execute store success score <anonymous> variable if data storage pandamium:local functions."pandamium:impl/punishment/kick/*".source{anonymous:true}
execute if score <anonymous> variable matches 0 run data modify storage do:io input set value ['{"type":"player","username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".source.username',interpret:true},'","anonymous":false}']
execute if score <anonymous> variable matches 1 run data modify storage do:io input set value ['{"type":"player","username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/kick/*".source.username',interpret:true},'","anonymous":true}']
function do:text/resolve
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".log_source_json set from storage do:io output

# announcement
execute if score <announce> variable matches 0 run return 1

data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".announcement_insertion set value " by a staff member"

$execute if score $(username) alt_of matches 1.. run return 1
function pandamium:utils/get/display_name/from_username with storage pandamium:local functions."pandamium:impl/punishment/kick/*".source
data modify storage do:io input set value [" by ",{storage:"pandamium:temp",nbt:"display_name",interpret:true}]
function do:text/resolve
data modify storage pandamium:local functions."pandamium:impl/punishment/kick/*".announcement_insertion set from storage do:io output


# success
return 1

# arguments: username

# log
execute store success score <anonymous> variable if data storage pandamium:local functions."pandamium:impl/punishment/ban/*".source{anonymous:true}
execute if score <anonymous> variable matches 0 run data modify storage pandamium:text input set value ['{"type":"player","username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".source.username'},'","anonymous":false}']
execute if score <anonymous> variable matches 1 run data modify storage pandamium:text input set value ['{"type":"player","username":"',{storage:"pandamium:local",nbt:'functions."pandamium:impl/punishment/ban/*".source.username'},'","anonymous":true}']
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".log_source_json set from storage pandamium:text input

# announcement
execute if score <announce> variable matches 0 run return 1

data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".announcement_insertion set value " by a staff member"

$execute if score $(username) alt_of matches 1.. run return 1
function pandamium:utils/get/display_name/from_username with storage pandamium:local functions."pandamium:impl/punishment/ban/*".source
data modify storage pandamium:text input set value [" by ",{storage:"pandamium:temp",nbt:"display_name",interpret:true}]
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/punishment/ban/*".announcement_insertion set from storage pandamium:text input


# success
return 1

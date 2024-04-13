# arguments: search

data modify storage pandamium:temp results set value []
scoreboard players set <results> variable 0
data modify storage pandamium:temp next_characters set value []
execute if data storage pandamium:global usernames_map[0] run data modify storage pandamium:temp next_characters append from storage pandamium:global usernames_map[].character

data modify storage pandamium:temp command_parts set value {0:"data modify storage pandamium:temp results append from storage pandamium:global usernames_map",1:"",2:"",3:"",4:"",5:"",6:"",7:"",8:"",9:"",10:"",11:"",12:"",13:"",14:"",15:"",16:"",17:"",18:"",19:"",20:"",21:"",22:"",23:"",24:"",25:"",26:"",27:"",28:"",29:"",30:"",31:"",32:"",33:"",34:"",35:"",36:"",37:"",38:"",39:"",40:"",41:"",42:"",43:"",44:"",45:"",46:"",47:"",48:"",49:"",50:"",51:"",52:"",53:"",54:"",55:"",56:"",57:"",58:"",59:"",60:"",61:"",62:"",63:"",64:"",65:"",66:"",67:"",68:"",69:"",70:"",71:"",72:"",73:"",74:"",75:"",76:"",77:"",78:"",79:"",80:"",81:"",82:"",83:"",84:"",85:"",86:"",87:"",88:"",89:"",90:"",91:"",92:"",93:"",94:"",95:"",96:"",97:"",98:"",99:""}
execute store result storage pandamium:templates macro.index__value.index int 1 run scoreboard players set <command_parts.next_index> variable 1

$data modify storage pandamium:temp this_username set value "$(search)"
execute if data storage pandamium:temp {this_username:""} run return 0

function pandamium:impl/usernames_map/search_name/loop
function pandamium:impl/usernames_map/search_name/run_command with storage pandamium:temp command_parts

data modify storage pandamium:temp next_characters set value []
execute if data storage pandamium:temp results[{children:[{}]}] run data modify storage pandamium:temp next_characters append from storage pandamium:temp results[{children:[{}]}].children[].character

execute if data storage pandamium:temp results[{children:[{}]}] run function pandamium:impl/usernames_map/search_name/loop2

data modify storage pandamium:temp buffer set value []
data modify storage pandamium:temp buffer append from storage pandamium:temp results[].value
data modify storage pandamium:temp results set from storage pandamium:temp buffer

execute store result score <results> variable if data storage pandamium:temp results[]

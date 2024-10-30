execute if score <trail_id> variable matches ..0 run return run data modify storage pandamium:temp trail set value '{"text":"Not Set","color":"gray"}'

data modify storage pandamium:temp trail set value '{"text":"missing_name","color":"gray"}'
execute store result storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_trail_name/with_name".id int 1 run scoreboard players get <trail_id> variable
function pandamium:triggers/particles/print_menu/get_trail_name/with_id with storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_trail_name/with_name"

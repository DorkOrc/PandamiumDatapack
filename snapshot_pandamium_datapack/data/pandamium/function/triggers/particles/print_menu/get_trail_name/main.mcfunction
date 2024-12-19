execute if score <trail_type> variable matches ..0 run return run data modify storage pandamium:temp trail_name set value '{"text":"Not Set","color":"gray"}'

data modify storage pandamium:temp trail_name set value '{"text":"missing_name","color":"gray"}'
execute store result storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_trail_name/*".type int 1 run scoreboard players get <trail_type> variable
function pandamium:triggers/particles/print_menu/get_trail_name/with_type with storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_trail_name/*"

execute if score <death_event_id> variable matches ..0 run return run data modify storage pandamium:temp death_event set value '{"text":"Not Set","color":"gray"}'

data modify storage pandamium:temp death_event set value '{"text":"missing_name","color":"gray"}'
execute store result storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_death_event_name/with_name".id int 1 run scoreboard players get <death_event_id> variable
function pandamium:triggers/particles/print_menu/get_death_event_name/with_id with storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_death_event_name/with_name"

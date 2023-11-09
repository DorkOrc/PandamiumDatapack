execute if score <death_event_id> variable matches ..0 run return run data modify storage pandamium:temp death_event set value '{"text":"Not Set","color":"gray"}'
data modify storage pandamium:temp death_event set value '{"text":"missing_name","color":"gray"}'
execute if score <death_event_id> variable matches 1..10 run function pandamium:triggers/particles/print_menu/get_death_event_name/tree/1..10
execute if score <death_event_id> variable matches 11..19 run function pandamium:triggers/particles/print_menu/get_death_event_name/tree/11..19

data modify storage pandamium:temp death_event set value '{"text":"Not Set","color":"gray"}'
execute if score <death_event_id> variable matches 1..9 run function pandamium:triggers/particles/print_menu/get_death_event_name/tree/1..9
execute if score <death_event_id> variable matches 10..18 run function pandamium:triggers/particles/print_menu/get_death_event_name/tree/10..18

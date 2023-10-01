data modify storage pandamium:temp trail set value '{"text":"Not Set","color":"gray"}'
execute if score <trail_id> variable matches 1..41 run function pandamium:triggers/particles/print_menu/get_trail_name/tree/1..41
execute if score <trail_id> variable matches 42..99 run function pandamium:triggers/particles/print_menu/get_trail_name/tree/42..99

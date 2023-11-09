execute if score <trail_id> variable matches ..0 run return run data modify storage pandamium:temp trail set value '{"text":"Not Set","color":"gray"}'
data modify storage pandamium:temp trail set value '{"text":"missing_name","color":"gray"}'
execute if score <trail_id> variable matches 1..42 run function pandamium:triggers/particles/print_menu/get_trail_name/tree/1..42
execute if score <trail_id> variable matches 43..99 run function pandamium:triggers/particles/print_menu/get_trail_name/tree/43..99

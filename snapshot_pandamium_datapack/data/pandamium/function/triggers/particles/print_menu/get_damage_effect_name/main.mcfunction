execute unless score <damage_effect_type> variable matches 1.. run return run data modify storage pandamium:temp damage_effect_name set value '{"text":"Not Set","color":"gray"}'

data modify storage pandamium:temp damage_effect_type_name set value '{"text":"missing_name","color":"gray"}'
execute store result storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_damage_effect_name/*".type int 1 run scoreboard players get <damage_effect_type> variable
function pandamium:triggers/particles/print_menu/get_damage_effect_name/with_type with storage pandamium:local functions."pandamium:triggers/particles/print_menu/get_damage_effect_name/*"

#> Pre
function pandamium:utils/database/players/load/self
execute store success score <has_alts> variable if data storage pandamium.db:players selected.entry.data.alts[0]

execute unless score @s staff_perms matches 1.. run scoreboard players set @s[scores={options=2..3}] options 1
execute unless score <has_alts> variable matches 1 run scoreboard players set @s[scores={options=3}] options 1
scoreboard players set @s[scores={options=4..}] options 1

#> Main
tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s options matches 1 run function pandamium:triggers/options/print_menu/normal
execute if score @s options matches 2 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches 3 run function pandamium:triggers/options/print_menu/alts/main

execute if score @s staff_perms matches 1.. if score <has_alts> variable matches 0 run tellraw @s [{"text":"\nPages: ","color":"yellow"},{"text":"[Regular]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Regular Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 1"}}," ",{"text":"[Staff]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Staff Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 2"}}]
execute if score @s staff_perms matches 1.. if score <has_alts> variable matches 1 run tellraw @s [{"text":"\nPages: ","color":"yellow"},{"text":"[Regular]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Regular Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 1"}}," ",{"text":"[Staff]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Staff Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 2"}}," ",{"text":"[Alts]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Alt Accounts","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 3"}}]

tellraw @s {"text":"==============================","color":"aqua"}

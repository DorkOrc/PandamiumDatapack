#> Pre
function pandamium:utils/database/players/load/self
execute store success score <has_alts> variable if data storage pandamium.db.players:io selected.entry.data.alts[0]

execute if score @s options matches 3..5 unless score @s staff_perms matches 1.. run scoreboard players set @s options 1
execute if score @s options matches 5 unless score <has_alts> variable matches 1 run scoreboard players set @s options 1
execute if score @s options matches 6.. run scoreboard players set @s options 1

#> Main
tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s options matches 1 run function pandamium:triggers/options/print_menu/gameplay
execute if score @s options matches 2 run function pandamium:triggers/options/print_menu/privacy_and_accessibility
execute if score @s options matches 3 run function pandamium:triggers/options/print_menu/staff
execute if score @s options matches 4 run function pandamium:triggers/options/print_menu/server
execute if score @s options matches 5 run function pandamium:triggers/options/print_menu/alts/main

tellraw @s ["",{"text":"\nPages: ","color":"yellow","bold":true},{"text":"[Gameplay]","color":"gold","insertion":"1","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Gameplay Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 1"}}," ",{"text":"[Privacy and Accessibility]","color":"gold","insertion":"2","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Privacy and Accessibility Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 2"}}]
execute if score @s staff_perms matches 1.. if score <has_alts> variable matches 0 run tellraw @s ["",{"text":"[Staff]","color":"gold","insertion":"3","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Staff Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 3"}}," ",{"text":"[Server]","color":"gold","insertion":"4","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Server Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 4"}}]
execute if score @s staff_perms matches 1.. if score <has_alts> variable matches 1 run tellraw @s ["",{"text":"[Staff]","color":"gold","insertion":"3","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Staff Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 3"}}," ",{"text":"[Server]","color":"gold","insertion":"4","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Server Options","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 4"}}," ",{"text":"[Alts]","color":"gold","insertion":"5","hoverEvent":{"action":"show_text","contents":[{"text":"Click to go to ","color":"gold"},{"text":"Alt Accounts","bold":true}," page"]},"clickEvent":{"action":"run_command","value":"/trigger options set 5"}}]

tellraw @s {"text":"==============================","color":"aqua"}

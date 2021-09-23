tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Auto-Jail Log","bold":true}," ========",{"text":"\nPlayers:","bold":true}]

data modify storage pandamium:jail print_list set from storage pandamium:jail auto_jails
execute unless data storage pandamium:jail print_list[0] run tellraw @s {"text":" n/a","color":"red","hoverEvent":{"action":"show_text","value":{"text":"There are no players in the auto-jail log!","color":"red"}}}
execute if score @s staff_perms matches 1 if data storage pandamium:jail print_list[0] run function pandamium:misc/jail/print_helper_auto_jail_log_iter
execute if score @s staff_perms matches 2.. if data storage pandamium:jail print_list[0] run function pandamium:misc/jail/print_mod_auto_jail_log_iter

tellraw @s[scores={staff_perms=2..}] {"text":"\nClick an entry to teleport to the pre-jail location!","color":"gold"}

tellraw @s {"text":"===============================","color":"yellow"}

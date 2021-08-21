tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Auto-Jail Log","bold":true}," ========",{"text":"\nPlayers:","bold":true}]

data modify storage pandamium:jail print_list set from storage pandamium:jail auto_jails
execute if score @s staff_perms matches 1 if data storage pandamium:jail print_list[0] run function pandamium:misc/jail/print_helper_auto_jail_log_iter
execute if score @s staff_perms matches 2.. if data storage pandamium:jail print_list[0] run function pandamium:misc/jail/print_mod_auto_jail_log_iter

tellraw @s {"text":"===============================","color":"yellow"}

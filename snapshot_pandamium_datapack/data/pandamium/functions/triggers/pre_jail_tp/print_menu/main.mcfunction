execute as @a store success score @s temp_1 if score @s pre_jail_pos_x = @s pre_jail_pos_x
execute store success score <pre_jail_pos_players_exist> variable if entity @a[scores={temp_1=1},limit=1]
execute if score <pre_jail_pos_players_exist> variable matches 0 run tellraw @s [{"text":"[TP Pre-Jail]","color":"dark_red"},{"text":" There are no players with stored pre-jail locations online!","color":"red"}]
execute if score <pre_jail_pos_players_exist> variable matches 0 run return 0

tellraw @s [{"text":"======== ","color":"yellow"},{"text":"TP Pre-Jail Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

function pandamium:triggers/pre_jail_tp/print_menu/list

tellraw @s {"text":"=============================","color":"yellow"}

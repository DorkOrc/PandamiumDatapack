execute as @a store success score @s temp_1 if score @s pre_jail_pos_x = @s pre_jail_pos_x
execute unless entity @a[scores={temp_1=1},limit=1] run return run tellraw @s [{"text":"[TP Pre-Jail]","color":"dark_red"},{"text":" There are no players with stored pre-jail locations online!","color":"red"}]

tellraw @s [{"text":"======== ","color":"yellow"},{"text":"TP Pre-Jail Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

function pandamium:triggers/pre_jail_tp/print_menu/list

tellraw @s {"text":"=============================","color":"yellow"}

return 1

tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Player Info Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

execute as @a[scores={staff_perms=1..}] run function pandamium:triggers/player_info_v2/print_selection_menu/as_player
execute as @a[sort=furthest,scores={staff_perms=0}] run function pandamium:triggers/player_info_v2/print_selection_menu/as_player

tellraw @s {"text":"=============================","color":"yellow"}

return 1

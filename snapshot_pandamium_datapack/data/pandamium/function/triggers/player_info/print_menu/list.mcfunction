execute as @a[scores={staff_perms=1..}] run function pandamium:triggers/player_info/print_menu/as_player
execute as @a[sort=furthest,scores={staff_perms=0}] run function pandamium:triggers/player_info/print_menu/as_player
tellraw @s [{text:" "},{text:"[Search Offline Players]",color:"#6100B9",hover_event:{action:"show_text",text:[{text:"Click to search for players by username",color:"#6100B9"}]},click_event:{action:"run_command",command:"trigger player_info_v2 set 1000001"}}]

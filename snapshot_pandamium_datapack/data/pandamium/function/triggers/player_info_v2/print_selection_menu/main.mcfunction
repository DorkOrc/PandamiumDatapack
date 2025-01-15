tellraw @s [{text:"======== ",color:"yellow"},{text:"Player Info Menu",bold:true},{text:" ========\n"},{text:"Player List:",bold:true}]

execute as @a[scores={staff_perms=1..}] run function pandamium:triggers/player_info_v2/print_selection_menu/as_player
execute as @a[sort=furthest,scores={staff_perms=0}] run function pandamium:triggers/player_info_v2/print_selection_menu/as_player

tellraw @s [{text:" "},{text:"[Search Offline Players]",color:"#6100B9",hover_event:{action:"show_text",value:[{text:"Click to search for players by username",color:"#6100B9"}]},click_event:{action:"run_command",command:"trigger player_info_v2 set 1000001"}}]

tellraw @s {text:"=============================",color:"yellow"}

return 1

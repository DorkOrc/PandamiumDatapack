tellraw @s [{text:"======== ",color:"yellow"},{text:"Player Info Menu",bold:true}," ========\n",{text:"Player List:",bold:true}]

execute as @a[predicate=pandamium:player/min_staff_perms/helper] run function pandamium:triggers/player_info/print_selection_menu/as_player
execute as @a[sort=furthest,predicate=!pandamium:player/min_staff_perms/helper] run function pandamium:triggers/player_info/print_selection_menu/as_player

tellraw @s [" ",{text:"[Search Offline Players]",color:"#6100B9",hover_event:{action:"show_text",value:[{text:"Click to search for players by username",color:"#6100B9"}]},click_event:{action:"run_command",command:"trigger player_info set 1000001"}}]

tellraw @s {text:"=============================",color:"yellow"}

return 1

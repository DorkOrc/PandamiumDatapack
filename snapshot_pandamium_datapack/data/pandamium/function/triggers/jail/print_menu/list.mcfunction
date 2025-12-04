scoreboard players operation <source_id> variable = @s id

execute as @a[predicate=pandamium:player/min_staff_perms/helper] run function pandamium:triggers/jail/print_menu/as_player
execute as @a[sort=furthest,predicate=!pandamium:player/min_staff_perms/helper] run function pandamium:triggers/jail/print_menu/as_player

tellraw @s [" ",{text:"[Search Offline Players]",color:"#6100B9",hover_event:{action:"show_text",value:[{text:"Click to search for players by username",color:"#6100B9"}]},click_event:{action:"run_command",command:"trigger jail set 1000001"}}]

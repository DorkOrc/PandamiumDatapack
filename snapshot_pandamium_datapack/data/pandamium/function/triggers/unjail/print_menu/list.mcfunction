execute as @a[scores={jailed=1..}] run function pandamium:triggers/unjail/print_menu/as_player
execute unless entity @a[scores={jailed=1..},limit=1] run tellraw @s {text:" There are no jailed players online!",color:"gray"}

tellraw @s [{text:" "},{text:"[Search Offline Players]",color:"#6100B9",hover_event:{action:"show_text",text:[{text:"Click to search for players by username",color:"#6100B9"}]},click_event:{action:"run_command",command:"trigger jail set 1000001"}}]

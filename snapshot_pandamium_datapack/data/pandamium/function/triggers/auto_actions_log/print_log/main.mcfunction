execute unless data storage pandamium:auto_actions actions[0] run return run tellraw @s [{text:"[Auto-Actions Log]",color:"dark_red"},{text:" There are no entries in the log!",color:"red"}]

data modify storage pandamium:auto_actions print_list set from storage pandamium:auto_actions actions

tellraw @s [{text:"======== ",color:"yellow"},{text:"Auto-Actions Log",bold:true}," ========",{text:"\nEntries:",bold:true}]

execute unless data storage pandamium:auto_actions print_list[0] run tellraw @s {text:" n/a",color:"red",hover_event:{action:"show_text",value:{text:"There are no entries in the auto-actions log!",color:"red"}}}
execute if data storage pandamium:auto_actions print_list[0] run function pandamium:triggers/auto_actions_log/print_log/iter

tellraw @s {text:"\nClick an auto-jail entry to teleport to that player's pre-jail location!",color:"gold"}
tellraw @s {text:"===============================",color:"yellow"}

scoreboard players set <unread_auto_actions> global 0

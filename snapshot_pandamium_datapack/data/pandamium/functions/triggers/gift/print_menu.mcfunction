tag @s add print

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Gift Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]
function pandamium:misc/print_grouped_id_list
tellraw @s [{"text":"\n","color":"green"},{"text":"How to gift vote credits: ","color":"aqua"},"Click ",{"text":"[Here]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger gift set "},"hoverEvent":{"action":"show_text","value":[{"text":"/trigger ","color":"gray"},{"text":"gift","color":"aqua"}," set ",{"text":"<ID>","color":"yellow","underlined":true}]}}," and type the ",{"text":"ID","color":"aqua","underlined":true}," of the player you want to send a vote credit to, then run the command!"]
tellraw @s {"text":"===========================","color":"aqua"}

tag @s remove print

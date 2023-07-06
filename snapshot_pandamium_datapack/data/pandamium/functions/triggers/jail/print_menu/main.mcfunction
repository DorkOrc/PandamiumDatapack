tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Jail Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]
function pandamium:triggers/jail/print_menu/list

execute unless score @s silent_punishments matches 1 run tellraw @s [{"text":"\nSilent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"yellow"},{"text":"Silent Punishments","bold":true},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"Off","color":"yellow","bold":true}]
execute if score @s silent_punishments matches 1 run tellraw @s [{"text":"\nSilent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"yellow"},{"text":"Silent Punishments","bold":true},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"On","color":"yellow","bold":true}]

tellraw @s {"text":"=============================","color":"yellow"}

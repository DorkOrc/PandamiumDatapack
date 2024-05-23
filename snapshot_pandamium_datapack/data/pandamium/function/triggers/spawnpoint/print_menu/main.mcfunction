tellraw @s [{"text":"======== ","color":"yellow"},{"text":"TP Menu","bold":true}," ========\n",{"text":"Player List:","bold":true}]

function pandamium:triggers/tp/print_menu/list

execute if score @s silent_punishments matches 1 run tellraw @s [{"text":"\nSilent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"yellow"},{"text":"Silent Punishments","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"True","color":"yellow","bold":true}]
execute unless score @s silent_punishments matches 1 run tellraw @s [{"text":"\nSilent Punishments: ","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to toggle option ","color":"yellow"},{"text":"Silent Punishments","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -301"}},{"text":"False","color":"yellow","bold":true}]

tellraw @s {"text":"=============================","color":"yellow"}

return 0

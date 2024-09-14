tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Parkour","bold":true}," ========"]
tellraw @s [{"text":"","color":"green"},{"text":"[Return to Last Checkpoint]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to return to last checkpoint","color":"dark_aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger parkour set -1"}},"  |  ",{"text":"[Quit]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"Quit","bold":true}," the course",{"text":"\n\nOr run ","color":"dark_gray"},{"text":"/trigger ","color":"gray"},{"text":"parkour.quit","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger parkour.quit"}},"  |  ",{"text":"[Restart]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_aqua"},{"text":"Restart","bold":true}," this course",{"text":"\n\nOr run ","color":"dark_gray"},{"text":"/trigger ","color":"gray"},{"text":"parkour.restart","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger parkour.restart"}}]

# options
execute unless score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"\nShow Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Parkour Timer","bold":true},[{"text":"","color":"dark_gray"},{"text":"\n• On (Default)","color":"white"},"\n• Off"]]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"\nShow Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Parkour Timer","bold":true},[{"text":"\n• On (Default)","color":"dark_gray"},{"text":"\n• Off","color":"white"}]]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s optn.parkour.restart_on_fall matches 1 run tellraw @s [{"text":"Restart on Fall: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Restart on Fall","bold":true},[{"text":"","color":"dark_gray"},{"text":"\n• Off (Default)","color":"white"},"\n• On"],{"text":"\nIf On, falling on any course\nwill send you back to the\nbeginning regardless of your\ncheckpoint. Useful for speedruns!","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -15"}},{"text":"Off","color":"yellow","bold":true}]
execute if score @s optn.parkour.restart_on_fall matches 1 run tellraw @s [{"text":"Restart on Fall: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Restart on Fall","bold":true},[{"text":"\n• Off (Default)","color":"dark_gray"},{"text":"\n• On","color":"white"}],{"text":"\nIf On, falling on any course\nwill send you back to the\nbeginning regardless of your\ncheckpoint. Useful for speedruns!","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -15"}},{"text":"On","color":"yellow","bold":true}]

tellraw @s {"text":"=========================","color":"aqua"}

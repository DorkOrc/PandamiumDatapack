# arguments: command

team leave @s
$$(_)vanish off
function pandamium:player/teams/update_base
function pandamium:player/teams/update_suffix
scoreboard players reset @s vanished
title @s actionbar "You are no longer vanished"
return 1

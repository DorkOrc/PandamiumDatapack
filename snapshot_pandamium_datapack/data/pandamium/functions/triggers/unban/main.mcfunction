tag @s add source

function pandamium:triggers/unban/logic

tag @s remove source
scoreboard players reset @s unban
scoreboard players enable @s unban

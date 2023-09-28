tag @s add source

function pandamium:triggers/kick/logic

tag @s remove source
scoreboard players reset @s kick
scoreboard players enable @s kick

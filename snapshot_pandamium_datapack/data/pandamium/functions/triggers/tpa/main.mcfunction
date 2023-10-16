scoreboard players set <returned> variable 0
tag @s add source

function pandamium:triggers/tpa/logic

tag @s remove source
scoreboard players reset @s tpa
scoreboard players enable @s tpa

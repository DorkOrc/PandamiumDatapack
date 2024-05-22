tag @s add source
scoreboard players set <returned> variable 0

function pandamium:triggers/playtime/logic

tag @a remove target
tag @s remove source
scoreboard players reset @s playtime
scoreboard players enable @s playtime

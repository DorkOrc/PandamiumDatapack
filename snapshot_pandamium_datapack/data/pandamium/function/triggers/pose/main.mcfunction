tag @s add source
scoreboard players set <returned> variable 0
scoreboard players set <sound> variable 0

function pandamium:triggers/pose/logic

tag @s remove source
scoreboard players reset @s pose
scoreboard players enable @s pose

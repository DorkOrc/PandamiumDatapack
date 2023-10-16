tag @s add source
scoreboard players set <returned> variable 0

function pandamium:triggers/guidebook/logic

tag @a remove target
tag @s remove source
scoreboard players reset @s guidebook
scoreboard players enable @s[scores={staff_perms=1..}] guidebook

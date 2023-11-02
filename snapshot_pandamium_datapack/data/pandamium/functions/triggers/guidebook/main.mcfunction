function pandamium:utils/triggers/disable_player_suffixes
scoreboard players set <returned> variable 0
tag @s add source

function pandamium:triggers/guidebook/logic

tag @a remove target
tag @s remove source
scoreboard players reset @s guidebook
scoreboard players enable @s[scores={staff_perms=1..}] guidebook

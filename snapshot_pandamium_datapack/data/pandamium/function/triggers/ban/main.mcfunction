function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/ban/logic

tag @s remove source
scoreboard players reset @s ban
scoreboard players enable @s ban

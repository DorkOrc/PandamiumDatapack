function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/unjail/logic

tag @s remove source
scoreboard players reset @s unjail
scoreboard players enable @s unjail

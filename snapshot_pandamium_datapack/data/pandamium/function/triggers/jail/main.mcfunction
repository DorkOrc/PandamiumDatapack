function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/jail/logic

tag @s remove source
scoreboard players reset @s jail
scoreboard players enable @s jail

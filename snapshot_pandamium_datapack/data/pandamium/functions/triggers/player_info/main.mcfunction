function pandamium:utils/triggers/disable_player_suffixes
scoreboard players set <player_info.returned> variable 0
tag @s add player_info.source

function pandamium:triggers/player_info/logic

tag @a remove player_info.target
tag @s remove player_info.source
scoreboard players reset @s player_info
scoreboard players enable @s player_info

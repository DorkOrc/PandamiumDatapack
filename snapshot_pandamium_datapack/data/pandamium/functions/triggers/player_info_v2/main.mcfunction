function pandamium:utils/triggers/disable_player_suffixes
tag @s add source
data modify storage pandamium:temp arguments set value {}

function pandamium:triggers/player_info_v2/logic

tag @s remove source
scoreboard players reset @s player_info_v2
scoreboard players enable @s player_info_v2

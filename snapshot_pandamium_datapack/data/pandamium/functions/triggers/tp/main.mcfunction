function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/tp/logic

tag @a remove target
tag @s remove source
scoreboard players reset @s tp
scoreboard players enable @s tp

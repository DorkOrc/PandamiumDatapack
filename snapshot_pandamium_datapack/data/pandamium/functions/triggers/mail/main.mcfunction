function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/mail/logic

tag @s remove source
scoreboard players reset @s mail
scoreboard players enable @s mail

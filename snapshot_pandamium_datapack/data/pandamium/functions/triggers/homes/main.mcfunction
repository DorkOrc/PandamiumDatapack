function pandamium:utils/triggers/disable_player_suffixes
data modify storage pandamium:temp arguments set value {}

function pandamium:triggers/homes/logic

scoreboard players reset @s homes
scoreboard players enable @s homes

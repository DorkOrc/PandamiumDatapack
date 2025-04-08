function pandamium:utils/triggers/disable_player_suffixes
data remove storage pandamium:local functions."pandamium:triggers/jail/*"

function pandamium:triggers/jail/logic

scoreboard players reset @s jail
scoreboard players enable @s jail

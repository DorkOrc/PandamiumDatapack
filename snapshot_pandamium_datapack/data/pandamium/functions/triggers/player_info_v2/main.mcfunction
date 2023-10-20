tag @s add source
data modify storage pandamium:temp arguments set value {}

function pandamium:triggers/player_info_v2/logic

tellraw @s [{"text":"[Player Info V2]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger player_info"}},[{"text":" This is a work-in-progress rewrite of the player_info trigger. ","color":"gray"},{"text":"Click here","underlined":true}," to open the stable version."]]

tag @s remove source
scoreboard players reset @s player_info_v2
scoreboard players enable @s player_info_v2

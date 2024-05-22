execute if score <enderman_farm_x> global = <enderman_farm_x> global run return run function pandamium:misc/warp/enderman_farm

execute if score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist! "],{"text":"[✎]","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to configure the ","color":"yellow"},{"text":"Enderman Farm","bold":true}," warp"]},"clickEvent":{"action":"run_command","value":"/trigger enderman_farm set -1"}}]
tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]

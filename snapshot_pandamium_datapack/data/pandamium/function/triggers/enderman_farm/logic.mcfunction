execute if data storage pandamium:global enderman_farm_warp run return run function pandamium:misc/warp/enderman_farm

execute if score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist! "],{"text":"[✎]","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Click to configure the ","color":"yellow"},{"text":"Enderman Farm","bold":true}," warp"]},"clickEvent":{"action":"run_command","value":"/trigger enderman_farm.config"}}]
tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]

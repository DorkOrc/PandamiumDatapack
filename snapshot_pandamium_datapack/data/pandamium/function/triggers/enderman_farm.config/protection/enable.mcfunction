execute unless data storage pandamium:global enderman_farm_warp run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]
execute if data storage pandamium:global enderman_farm_warp{protected:1b} run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},{"text":" Enderman Farm Protection is already enabled!","color":"red"}]

data modify storage pandamium:global enderman_farm_warp.protected set value 1b
scoreboard players set <enderman_farm_warp.protected> global 1

function pandamium:triggers/enderman_farm.config/print_menu
tellraw @s [{"text":"[Enderman Farm]","color":"dark_green"},[{"text":" Enabled ","color":"green"},{"text":"Enderman Farm Protection","bold":true},"!"]]

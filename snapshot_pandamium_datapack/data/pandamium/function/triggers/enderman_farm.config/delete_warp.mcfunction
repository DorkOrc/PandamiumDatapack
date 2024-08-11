execute unless data storage pandamium:global enderman_farm_warp run return run tellraw @s [{"text":"[Enderman Farm]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Enderman Farm","bold":true}," warp does not exist!"]]

data remove storage pandamium:global enderman_farm_warp
scoreboard players set <enderman_farm_warp.protected> global 0

function pandamium:triggers/enderman_farm.config/print_menu
tellraw @s [{"text":"[Enderman Farm]","color":"dark_green"},[{"text":" ","color":"green"},{"text":"Deleted","color":"aqua"}," the ",{"text":"Enderman Farm","color":"aqua"}," warp!"]]

execute unless data storage pandamium:global enderman_farm_warp run return run tellraw @s [{text:"[Enderman Farm]",color:"dark_red"},{text:" The ",color:"red",extra:[{text:"Enderman Farm",bold:true},{text:" warp does not exist!"}]}]
execute unless data storage pandamium:global enderman_farm_warp{protected:1b} run return run tellraw @s [{text:"[Enderman Farm]",color:"dark_red"},{text:" Enderman Farm Protection is already disabled!",color:"red"}]

data modify storage pandamium:global enderman_farm_warp.protected set value 0b
scoreboard players set <enderman_farm_warp.protected> global 0

function pandamium:triggers/enderman_farm.config/print_menu
tellraw @s [{text:"[Enderman Farm]",color:"dark_green"},{text:" Disabled ",color:"green",extra:[{text:"Enderman Farm Protection",bold:true},"!"]}]

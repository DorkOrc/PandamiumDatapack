execute if data storage pandamium:global enderman_farm_warp run return run function pandamium:misc/warp/enderman_farm

execute if score @s staff_perms matches 1.. run return run tellraw @s [{text:"[Enderman Farm]",color:"dark_red"},{text:" The ",color:"red",extra:[{text:"Enderman Farm",bold:true},{text:" warp does not exist! "}]},{text:"[✎]",color:"yellow",hover_event:{action:"show_text",text:[{text:"Click to configure the ",color:"yellow"},{text:"Enderman Farm",bold:true},{text:" warp"}]},click_event:{action:"run_command",command:"trigger enderman_farm.config"}}]
tellraw @s [{text:"[Enderman Farm]",color:"dark_red"},{text:" The ",color:"red",extra:[{text:"Enderman Farm",bold:true},{text:" warp does not exist!"}]}]

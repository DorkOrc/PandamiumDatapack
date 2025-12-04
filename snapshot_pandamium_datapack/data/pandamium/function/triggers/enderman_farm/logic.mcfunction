execute if data storage pandamium:global enderman_farm_warp run return run function pandamium:misc/warp/enderman_farm

execute if predicate pandamium:player/min_staff_perms/helper run return run tellraw @s [{text:"[Enderman Farm]",color:"dark_red"},{text:" The ",color:"red",extra:[{text:"Enderman Farm",bold:true}," warp does not exist! "]},{text:"[✎]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to configure the ",color:"yellow"},{text:"Enderman Farm",bold:true}," warp"]},click_event:{action:"run_command",command:"trigger enderman_farm.config"}}]
tellraw @s [{text:"[Enderman Farm]",color:"dark_red"},{text:" The ",color:"red",extra:[{text:"Enderman Farm",bold:true}," warp does not exist!"]}]

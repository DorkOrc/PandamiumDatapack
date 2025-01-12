execute if score @s help.advancements matches ..-1 run return run tellraw @s [{text:"[Help]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score @s help.advancements matches 1..99 run return run function pandamium:triggers/help.advancements/print_menu

execute unless score @s help.advancements matches 101..199 unless score @s help.advancements matches 201..299 run return run tellraw @s [{text:"[Help]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
scoreboard players operation <type> variable = @s help.advancements
scoreboard players operation <type> variable %= #100 constant
execute unless score <type> variable matches 1..5 run return run tellraw @s [{text:"[Help]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score <type> variable matches 1 if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"pandamium:pandamium/mini_blocks/craft_every_mini_block":true}}}} run return run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You've crafted every mini-block! Congrats?",color:"green"}]
execute if score <type> variable matches 1 run function pandamium:triggers/help.advancements/get_advancement_progress/craft_every_mini_block
execute if score <type> variable matches 2 if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"pandamium:pandamium/mob_heads/obtain_every_mob_head":true}}}} run return run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You've collected every mob head! Congrats?",color:"green"}]
execute if score <type> variable matches 2 run function pandamium:triggers/help.advancements/get_advancement_progress/obtain_every_mob_head
execute if score <type> variable matches 3 if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/adventuring_time":true}}}} run return run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You've visited all biomes!",color:"green"}]
execute if score <type> variable matches 3 run function pandamium:triggers/help.advancements/get_advancement_progress/adventuring_time
execute if score <type> variable matches 4 if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:adventure/kill_all_mobs":true}}}} run return run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You've killed at least one of every mob type!",color:"green"}]
execute if score <type> variable matches 4 run function pandamium:triggers/help.advancements/get_advancement_progress/kill_all_mobs
execute if score <type> variable matches 5 if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"minecraft:husbandry/balanced_diet":true}}}} run return run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You've eaten at least one of every food type!",color:"green"}]
execute if score <type> variable matches 5 run function pandamium:triggers/help.advancements/get_advancement_progress/balanced_diet

execute if score @s help.advancements matches 101..199 if score <total_missing> variable matches ..25 run scoreboard players add @s help.advancements 100

execute if score @s help.advancements matches 101 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have crafted ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" mini blocks! "},{text:"Click here",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to list all of your\nmissing mini blocks",color:"aqua"}]},click_event:{action:"run_command",command:"trigger help.advancements set 201"}},{text:" to get a list of the "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" mini-blocks you're missing."}]}]
execute if score @s help.advancements matches 201 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have crafted ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" mini blocks! The "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" remaining mini-blocks to collect are: "},{nbt:'functions."pandamium:triggers/help.advancements/main".missing[].display',storage:"pandamium:local",interpret:true,color:"aqua",separator:{text:", ",color:"green"}},{text:"."}]}]

execute if score @s help.advancements matches 102 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have obtained ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" mob heads! "},{text:"Click here",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to list all of your\nmissing mob heads",color:"aqua"}]},click_event:{action:"run_command",command:"trigger help.advancements set 202"}},{text:" to get a list of the "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" mob heads you're missing."}]}]
execute if score @s help.advancements matches 202 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have obtained ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" mob heads! The "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" remaining mob heads to collect are: "},{nbt:'functions."pandamium:triggers/help.advancements/main".missing[].display',storage:"pandamium:local",interpret:true,color:"aqua",separator:{text:", ",color:"green"}},{text:"."}]}]

execute if score @s help.advancements matches 103 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have visited ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" biomes! "},{text:"Click here",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to list all of the biomes\nyou have not visited",color:"aqua"}]},click_event:{action:"run_command",command:"trigger help.advancements set 203"}},{text:" to get a list of the "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" biomes you have not visited yet."}]}]
execute if score @s help.advancements matches 203 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have visited ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" biomes! The "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" remaining biomes to visit are: "},{nbt:'functions."pandamium:triggers/help.advancements/main".missing[].display',storage:"pandamium:local",interpret:true,color:"aqua",separator:{text:", ",color:"green"}},{text:"."}]}]

execute if score @s help.advancements matches 104 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have killed ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" hostile mob types! "},{text:"Click here",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to list all of the hostile\nmob types you have not killed",color:"aqua"}]},click_event:{action:"run_command",command:"trigger help.advancements set 204"}},{text:" to get a list of the "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" hostile mob types you have not killed yet."}]}]
execute if score @s help.advancements matches 204 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have killed ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" hostile mob types! The "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" remaining hostile mobs to kill are: "},{nbt:'functions."pandamium:triggers/help.advancements/main".missing[].display',storage:"pandamium:local",interpret:true,color:"aqua",separator:{text:", ",color:"green"}},{text:"."}]}]

execute if score @s help.advancements matches 105 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have eaten ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" food types! "},{text:"Click here",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to list all of the food\ntypes you have not eaten",color:"aqua"}]},click_event:{action:"run_command",command:"trigger help.advancements set 205"}},{text:" to get a list of the "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" food types you have not eaten yet."}]}]
execute if score @s help.advancements matches 205 run tellraw @s [{text:"[Help]",color:"dark_green"},{text:" You have eaten ",color:"green",extra:[{score:{name:"<total_completed>",objective:"variable"},color:"aqua"},{text:" out of "},{score:{name:"<goal>",objective:"variable"},color:"dark_aqua"},{text:" food types! The "},{score:{name:"<total_missing>",objective:"variable"},color:"aqua"},{text:" remaining foods to eat are: "},{nbt:'functions."pandamium:triggers/help.advancements/main".missing[].display',storage:"pandamium:local",interpret:true,color:"aqua",separator:{text:", ",color:"green"}},{text:"."}]}]

execute if score @s help.advancements matches 201..299 if score <total_missing> variable matches 50.. run tellraw @s {text:"If this list is too big, you can open your output log to copy and paste it somewhere else.",color:"gray",italic:true}

data remove storage pandamium:local functions."pandamium:triggers/help.advancements/main"

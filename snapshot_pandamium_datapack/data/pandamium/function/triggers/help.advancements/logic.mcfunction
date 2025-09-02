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

execute if score @s help.advancements matches 101 run function pandamium:triggers/help.advancements/break_down_progress/craft_every_mini_block
execute if score @s help.advancements matches 102 run function pandamium:triggers/help.advancements/break_down_progress/obtain_every_mob_head
execute if score @s help.advancements matches 103 run function pandamium:triggers/help.advancements/break_down_progress/adventuring_time
execute if score @s help.advancements matches 104 run function pandamium:triggers/help.advancements/break_down_progress/kill_all_mobs
execute if score @s help.advancements matches 105 run function pandamium:triggers/help.advancements/break_down_progress/balanced_diet

data remove storage pandamium:local functions."pandamium:triggers/help.advancements/main"

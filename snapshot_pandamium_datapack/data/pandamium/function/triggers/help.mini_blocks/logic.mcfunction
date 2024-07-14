execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",advancements:{"pandamium:pandamium/mini_blocks/craft_every_mini_block":true}}}} run return run tellraw @s [{"text":"[Help]","color":"dark_green"},{"text":" You've collected every mini-block! Congrats?","color":"green"}]

data modify storage pandamium:local functions."pandamium:triggers/help.mini_blocks/print_mini_blocks_progress".missing set value []
function pandamium:triggers/help.mini_blocks/get_mini_blocks_progress

execute store result score <total_missing> variable if data storage pandamium:local functions."pandamium:triggers/help.mini_blocks/print_mini_blocks_progress".missing[]
scoreboard players remove <total_missing> variable 1

scoreboard players operation <total_crafted> variable = <goal> variable
scoreboard players operation <total_crafted> variable -= <total_missing> variable

execute if score <total_missing> variable matches ..25 run scoreboard players set @s help.Mini_Blocks 2
execute if score @s help.Mini_Blocks matches 2 run tellraw @s [{"text":"[Help]","color":"dark_green"},[{"text":" You have crafted ","color":"green"},{"score":{"name":"<total_crafted>","objective":"variable"},"color":"aqua"}," out of ",{"score":{"name":"<goal>","objective":"variable"},"color":"dark_aqua"}," mini blocks! The ",{"score":{"name":"<total_missing>","objective":"variable"},"color":"aqua"}," remaining mini-blocks to collect are: ",{"nbt":"functions.\"pandamium:triggers/help.mini_blocks/print_mini_blocks_progress\".missing[].display","storage":"pandamium:local","interpret":true,"color":"aqua","separator":{"text":", ","color":"green"}},"."]]
execute if score @s help.Mini_Blocks matches 2 if score <total_missing> variable matches 50.. run tellraw @s {"text":"If this list is too big, you can open your output log to copy and paste it somewhere else.","color":"gray","italic":true}
execute unless score @s help.Mini_Blocks matches 2 run tellraw @s [{"text":"[Help]","color":"dark_green"},[{"text":" You have crafted ","color":"green"},{"score":{"name":"<total_crafted>","objective":"variable"},"color":"aqua"}," out of ",{"score":{"name":"<goal>","objective":"variable"},"color":"dark_aqua"}," mini blocks! ",{"text":"Click here","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to print all of your missing mini blocks","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger help.Mini_Blocks set 2"}}," to get a list of the ",{"score":{"name":"<total_missing>","objective":"variable"},"color":"aqua"}," mini-blocks you're missing."]]

data remove storage pandamium:local functions."pandamium:triggers/help.mini_blocks/print_mini_blocks_progress"

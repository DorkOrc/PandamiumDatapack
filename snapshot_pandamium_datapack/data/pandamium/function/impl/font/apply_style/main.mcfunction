## Pre

# resolve input
loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:temp",nbt:"text",interpret:true}}]}
data modify storage pandamium:temp text set from block 5 1 0 item.components.minecraft:custom_name

# convert input to compound and move to `storage pandamium:text compound`
data modify storage pandamium:text compound set value {text:""}
execute if data storage pandamium:temp text{} run data modify storage pandamium:text compound set from storage pandamium:temp text
execute unless data storage pandamium:temp text{} run data modify storage pandamium:text compound.text set from storage pandamium:temp text

## Modify Compound
scoreboard players set <valid_option> variable -1
execute store result score <valid_option> variable run function pandamium:impl/font/apply_style/modify_compound
execute if score <valid_option> variable matches 0..1 run scoreboard players set <valid_option> variable 1

## Post

# resolve and copy back to storage pandamium:temp text
execute if score <valid_option> variable matches 1 in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:text",nbt:"compound",interpret:true}}]}
execute if score <valid_option> variable matches 1 in pandamium:staff_world run data modify storage pandamium:temp text set from block 5 1 0 item.components.minecraft:custom_name

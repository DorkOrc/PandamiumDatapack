function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": switch_dimension ",{score:{name:"@s",objective:"switch_dimension"}},"]"]

# run AT @s

scoreboard players set <returned> variable 0
execute unless entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You can only run this trigger in spectator mode!",color:"red"}]

# Menu
execute if score <returned> variable matches 0 if score @s switch_dimension matches 1.. store success score <returned> variable run tellraw @s [{text:"======== ",color:"aqua"},{text:"Dimensions",bold:true}," ========\n",{text:" ",color:"green",extra:[{text:"[The Nether]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"aqua"},{text:"The Nether",bold:true}]},click_event:{action:"run_command",command:"trigger switch_dimension set -1"}},"  |  ",{text:"[Overworld]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"aqua"},{text:"The Overworld",bold:true}]},click_event:{action:"run_command",command:"trigger switch_dimension set -2"}},"  |  ",{text:"[The End]",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"aqua"},{text:"The End",bold:true}]},click_event:{action:"run_command",command:"trigger switch_dimension set -3"}}]},"\n============================"]

# Teleport
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 if dimension the_nether store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You are already in ",color:"red",extra:[{text:"The Nether",bold:true},"!"]}]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 if dimension overworld run function pandamium:triggers/switch_dimension/to_the_nether_from_overworld
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 unless dimension overworld in the_nether run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"The Nether",color:"aqua"},"!"]}]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 if dimension overworld store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You are already in ",color:"red",extra:[{text:"The Overworld",bold:true},"!"]}]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 if dimension the_nether run function pandamium:triggers/switch_dimension/to_overworld_from_the_nether
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 unless dimension the_nether in overworld run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"The Overworld",color:"aqua"},"!"]}]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 if dimension the_end store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You are already in ",color:"red",extra:[{text:"The End",bold:true},"!"]}]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 in the_end run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"The End",color:"aqua"},"!"]}]

execute if score <returned> variable matches 0 run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

scoreboard players reset @s switch_dimension
scoreboard players enable @s switch_dimension

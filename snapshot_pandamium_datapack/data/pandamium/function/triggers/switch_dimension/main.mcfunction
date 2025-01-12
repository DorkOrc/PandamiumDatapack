# run AT @s

scoreboard players set <returned> variable 0
execute unless entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You can only run this trigger in spectator mode!",color:"red"}]

# Menu
execute if score <returned> variable matches 0 if score @s switch_dimension matches 1.. store success score <returned> variable run tellraw @s [{text:"======== ",color:"aqua"},{text:"Dimensions",bold:true},{text:" ========\n"},{text:" ",color:"green",extra:[{text:"[The Nether]",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to teleport to ",color:"aqua"},{text:"The Nether",bold:true}]},click_event:{action:"run_command",command:"trigger switch_dimension set -1"}},{text:"  |  "},{text:"[Overworld]",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to teleport to ",color:"aqua"},{text:"The Overworld",bold:true}]},click_event:{action:"run_command",command:"trigger switch_dimension set -2"}},{text:"  |  "},{text:"[The End]",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to teleport to ",color:"aqua"},{text:"The End",bold:true}]},click_event:{action:"run_command",command:"trigger switch_dimension set -3"}}]},{text:"\n============================"}]

# Teleport
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 if dimension the_nether store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You are already in ",color:"red",extra:[{text:"The Nether",bold:true},{text:"!"}]}]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 if dimension overworld run function pandamium:triggers/switch_dimension/to_the_nether_from_overworld
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 unless dimension overworld in the_nether run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -1 store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"The Nether",color:"aqua"},{text:"!"}]}]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 if dimension overworld store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You are already in ",color:"red",extra:[{text:"The Overworld",bold:true},{text:"!"}]}]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 if dimension the_nether run function pandamium:triggers/switch_dimension/to_overworld_from_the_nether
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 unless dimension the_nether in overworld run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -2 store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"The Overworld",color:"aqua"},{text:"!"}]}]

execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 if dimension the_end store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" You are already in ",color:"red",extra:[{text:"The End",bold:true},{text:"!"}]}]
execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 in the_end run tp ~ ~ ~
execute if score <returned> variable matches 0 if score @s switch_dimension matches -3 store success score <returned> variable run tellraw @s [{text:"[Switch Dimension]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"The End",color:"aqua"},{text:"!"}]}]

execute if score <returned> variable matches 0 run tellraw @s [{text:"[Switch Dimension]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

scoreboard players reset @s switch_dimension
scoreboard players enable @s switch_dimension

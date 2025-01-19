function pandamium:utils/text/get_characters

execute store result score <max_index> variable if data storage pandamium:text output[]
scoreboard players remove <max_index> variable 1
execute if score <max_index> variable matches ..-1 run return run execute store success score <returned> variable run tellraw @s [{text:"[Font]",color:"dark_red"},{text:" String is too short!",color:"red",hover_event:{action:"show_text",value:[{text:"Failed to apply gradient to ",color:"red"},{storage:"pandamium:temp",nbt:"text",interpret:true}]}}]
execute if score <max_index> variable matches 50.. run return run execute store success score <returned> variable run tellraw @s [{text:"[Font]",color:"dark_red"},{text:" String is too long! As a lag prevention measure, the maximum string length for applying a gradient is 50 characters.",color:"red",hover_event:{action:"show_text",value:[{text:"Failed to apply gradient to ",color:"red"},{storage:"pandamium:temp",nbt:"text",interpret:true}]}}]

execute if score <max_index> variable matches 0 run return run function pandamium:impl/font/custom_styles/rainbow/single_character_exception

# else, iterate
function pandamium:utils/text/input/force_compound
data remove storage pandamium:text input.text
data remove storage pandamium:text input.extra
data remove storage pandamium:text input.color

scoreboard players set <index> variable 0
function pandamium:impl/font/custom_styles/rainbow/loop

data modify storage pandamium:text input merge from storage pandamium:text input.extra[0]
data remove storage pandamium:text input.extra[0]
execute unless data storage pandamium:text input.extra[0] run data remove storage pandamium:text input.extra

data modify storage pandamium:text result set from storage pandamium:text input

return 1

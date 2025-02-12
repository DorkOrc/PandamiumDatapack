execute unless predicate pandamium:player/can_enable_custom_dye run return run tellraw @s [{text:"[Dye]",color:"dark_red"},{text:" Only Patreon supporters can choose a dynamic custom dye for leather armour! You can check out our ",extra:[{text:"discord server",bold:true}," for more information on how to support us!"],color:"red",hover_event:{action:"show_text",value:[{text:"Click to join our ",color:"aqua"},{text:"Discord Server",bold:true}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu"}},{text:"\n This command would let you decorate your leather armour with custom animated patterns, gradients, camoflague, and more!",color:"gray"}]

# menu
execute if score @s dye matches 101 run return run function pandamium:triggers/dye/print_menu/gradients
execute if score @s dye matches 1.. run return run function pandamium:triggers/dye/print_menu/main

# toggle off/on
execute if score @s dye matches -403..-401 run return run function pandamium:triggers/dye/toggle

# choose type
scoreboard players set <chosen_type> variable 0
execute if score @s dye matches -99..-1 run scoreboard players operation <chosen_type> variable -= @s dye
execute if score @s dye matches -99..-1 if score <chosen_type> variable matches 4..5 run return run tellraw @s [{text:"[Dye]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score <chosen_type> variable matches 1..5 run return run function pandamium:triggers/dye/change_type

# choose fixed colour
execute if score @s dye matches -399..-301 run return run function pandamium:triggers/dye/set_type/fixed

# choose gradient right colour
execute if score @s dye matches -299..-201 run return run function pandamium:triggers/dye/set_type/gradient

# choose gradient left colour
execute if score @s dye matches -199..-101 run scoreboard players set <colour> variable -100
execute if score @s dye matches -199..-101 run scoreboard players operation <colour> variable -= @s dye
execute if score @s dye matches -199..-101 run function pandamium:impl/font/get_colour
execute if score @s dye matches -199..-101 if score <valid_option> variable matches 0 run return run tellraw @s [{text:"[Dye]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score @s dye matches -199..-101 run scoreboard players operation @s custom_dye.gradient.left_color_id = <colour> variable
execute if score @s dye matches -199..-101 run return run tellraw @s [{text:"[Dye]",color:"dark_green"},{text:" Set left colour to ",color:"green",extra:[{storage:"pandamium:temp",nbt:"colour.name",interpret:true},"!"]}]

# else
tellraw @s [{text:"[Dye]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

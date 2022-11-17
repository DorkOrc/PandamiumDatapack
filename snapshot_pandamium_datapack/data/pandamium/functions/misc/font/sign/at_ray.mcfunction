execute store success score <returned> variable if predicate pandamium:in_spawn run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot edit signs at spawn!","color":"red"}]

# Do Edit
scoreboard players operation <line> variable = @s sign_font
scoreboard players operation <line> variable *= #-1 constant
scoreboard players operation <line> variable /= #100 constant
scoreboard players add <line> variable 1
execute store success score <all_lines> variable if score <line> variable matches 5
execute if score <returned> variable matches 0 store success score <returned> variable unless score <line> variable matches 1..5 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players operation <font> variable = @s sign_font
scoreboard players operation <font> variable *= #-1 constant
scoreboard players operation <font> variable %= #100 constant

execute if score <returned> variable matches 0 run scoreboard players set <valid_option> variable 0
execute if score <returned> variable matches 0 run function pandamium:misc/font/sign/edit_text
execute if score <returned> variable matches 0 store success score <returned> variable if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if score <lines_changed> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

# Success
execute if score <returned> variable matches 0 if score <valid_option> variable matches 1 if score <lines_changed> variable matches 1.. run playsound ui.cartography_table.take_result master @s
execute if score <returned> variable matches 0 store success score <returned> variable if score <valid_option> variable matches 1 if score <lines_changed> variable matches 1.. run tellraw @s [{"text":"","color":"green"},{"text":"[Sign Font]","color":"dark_green"}," Updated the text on the sign you are looking at!"]

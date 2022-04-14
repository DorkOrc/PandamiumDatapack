tag @s add running_trigger

# Get <section> and <value_in_section>
scoreboard players operation <section> variable = @s vote_shop
scoreboard players operation <section> variable /= <100> variable

scoreboard players operation <value_in_section> variable = @s vote_shop
execute unless score @s vote_shop matches ..-1 run scoreboard players operation <value_in_section> variable %= <100> variable

execute if score @s vote_shop matches ..-1 run scoreboard players operation <value_in_section> variable %= <100> variable
execute if score @s vote_shop matches ..-1 run scoreboard players operation <value_in_section> variable *= <-1> variable
execute if score @s vote_shop matches ..-1 run scoreboard players add <value_in_section> variable 100

# Print Menu
execute if score @s vote_shop matches 1.. run function pandamium:misc/vote_shop/print_menu/main

# Get price and validate option (returns <cost>, <valid_option>, <buying_mini_block> and <reference_value>)
execute if score @s vote_shop matches ..-1 run function pandamium:misc/vote_shop/get_price
execute if score @s vote_shop matches ..-1 if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Asks to confirm purchase (if no confirmation is required, the section is adjusted to forcably purchase the item)
execute if score <valid_option> variable matches 1 if score <section> variable matches -20..-11 run function pandamium:misc/vote_shop/ask_to_confirm_purchase

# Purchase
execute if score <valid_option> variable matches 1 if score <section> variable matches -10..-1 run function pandamium:misc/vote_shop/check_requirements
execute if score <valid_option> variable matches 1 if score <section> variable matches -200..-101 run function pandamium:misc/vote_shop/check_requirements
execute if score <valid_option> variable matches 1 if score <section> variable matches ..-201 run function pandamium:misc/vote_shop/check_requirements

execute as @e[type=marker,tag=raycast.bedrock] run function pandamium:misc/raycast/kill_marker_vibration_fix
tag @s remove running_trigger
scoreboard players reset @s vote_shop
scoreboard players enable @s vote_shop

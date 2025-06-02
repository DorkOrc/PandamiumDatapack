function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": rewards_shop ",{score:{name:"@s",objective:"rewards_shop"}},"]"]

tag @s add source

scoreboard players set <has_given> variable 0

# Get <section> and <value_in_section>
scoreboard players operation <section> variable = @s rewards_shop
scoreboard players operation <section> variable /= #100 constant

scoreboard players operation <value_in_section> variable = @s rewards_shop
execute unless score @s rewards_shop matches ..-1 run scoreboard players operation <value_in_section> variable %= #100 constant

execute if score @s rewards_shop matches ..-1 run scoreboard players operation <value_in_section> variable %= #100 constant
execute if score @s rewards_shop matches ..-1 run scoreboard players operation <value_in_section> variable *= #-1 constant
execute if score @s rewards_shop matches ..-1 run scoreboard players add <value_in_section> variable 100

# Print Menu
execute if score @s rewards_shop matches 1.. run function pandamium:triggers/vote_shop/print_menu/main

# Get price and validate option (returns <cost>, <valid_option> and <reference_value>)
execute if score @s rewards_shop matches ..-1 run function pandamium:triggers/vote_shop/get_price
execute if score @s rewards_shop matches ..-1 if score <valid_option> variable matches 0 run tellraw @s [{text:"[Rewards Shop]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# Asks to confirm purchase (if no confirmation is required, the section is adjusted to forcably purchase the item)
execute if score <valid_option> variable matches 1 if score <section> variable matches -20..-11 run function pandamium:triggers/vote_shop/ask_to_confirm_purchase

# Purchase
execute if score <valid_option> variable matches 1 if score <section> variable matches -10..-1 run function pandamium:triggers/vote_shop/check_requirements
execute if score <valid_option> variable matches 1 if score <section> variable matches -200..-101 run function pandamium:triggers/vote_shop/check_requirements
execute if score <valid_option> variable matches 1 if score <section> variable matches ..-201 run function pandamium:triggers/vote_shop/check_requirements

tag @s remove source
scoreboard players reset @s rewards_shop
scoreboard players enable @s rewards_shop

scoreboard players set <returned> variable 0

execute store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:utils/print_donator_only_message
execute if score <returned> variable matches 0 if score @s jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

# menu
execute if score <returned> variable matches 0 if score @s item_font matches 2 store success score <returned> variable run function pandamium:impl/font/print_menu/item_font/gradients
execute if score <returned> variable matches 0 if score @s item_font matches 1.. store success score <returned> variable run function pandamium:impl/font/print_menu/item_font/main

# run
execute if score <returned> variable matches 0 if score @s item_font matches ..-1 run function pandamium:impl/triggers/item_font/run_negative_input


scoreboard players reset @s item_font
scoreboard players enable @s item_font

execute unless score @s gameplay_perms matches 6.. run function pandamium:utils/print_donator_only_message
execute unless score @s gameplay_perms matches 6.. run return 0

execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s jailed matches 1.. run return 0
execute if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]
execute if entity @s[gamemode=spectator] run return 0

# menu
execute if score @s item_font matches 1.. unless score @s item_font matches 101 run function pandamium:triggers/item_font/print_menu/normal
execute if score @s item_font matches 101 run function pandamium:triggers/item_font/print_menu/gradients
execute if score @s item_font matches 1.. run return 0

# run
function pandamium:triggers/item_font/run_negative_input

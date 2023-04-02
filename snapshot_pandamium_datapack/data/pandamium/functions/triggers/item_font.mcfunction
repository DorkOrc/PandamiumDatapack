scoreboard players set <returned> variable 0

execute store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

# Menu
execute if score <returned> variable matches 0 if score @s staff_perms matches 1.. if score @s item_font matches 2 store success score <returned> variable run function pandamium:misc/font/print_menu/item_font/gradients
execute if score <returned> variable matches 0 if score @s item_font matches 1.. store success score <returned> variable run function pandamium:misc/font/print_menu/item_font/main

# Restrictions
execute if score <returned> variable matches 0 if score @s jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

# Gradient
execute if score <returned> variable matches 0 if score @s staff_perms matches 1.. if score @s item_font matches -300..-201 run function pandamium:misc/font/custom_fonts/gradient/enter_left_index
execute if score <returned> variable matches 0 if score @s staff_perms matches 1.. if score @s item_font matches -400..-301 run function pandamium:misc/font/custom_fonts/gradient/enter_right_index

# Everything Else
execute if score <returned> variable matches 0 run data modify storage pandamium:temp nbt set from entity @s
execute if score <returned> variable matches 0 unless data storage pandamium:temp nbt.SelectedItem store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" There is no item in your main hand!","color":"red"}]

execute if score <returned> variable matches 0 run function pandamium:misc/font/check_item_display_requirements
execute if score <returned> variable matches 0 if score <can_edit> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" The item in your main hand has no custom name, or there is no lore on that line! Name the item using an anvil to change its font and give it lore.","color":"red"}]

execute if score <returned> variable matches 0 if data storage pandamium:temp nbt.SelectedItem.tag.pandamium.font.cannot_modify{all:1b} store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the display properties of that item!","color":"red"}]
execute if score <returned> variable matches 0 if score @s item_font matches -100..-1 if data storage pandamium:temp nbt.SelectedItem.tag.pandamium.font.cannot_modify{name:1b} store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the name of that item!","color":"red"}]
execute if score <returned> variable matches 0 if score @s item_font matches -200..-101 run function pandamium:misc/font/check_can_modify_lore

# Do Edit
execute if score <returned> variable matches 0 run scoreboard players operation <font> variable = @s item_font
execute if score <returned> variable matches 0 run scoreboard players operation <font> variable *= #-1 constant

execute if score <returned> variable matches 0 if score <font> variable matches 1..100 run function pandamium:misc/font/edit_mainhand_name
execute if score <returned> variable matches 0 if score <font> variable matches 101..104 run function pandamium:misc/font/edit_mainhand_lore
execute if score <returned> variable matches 0 if score <valid_option> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 if score <text_changed> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

# Success
execute if score <returned> variable matches 0 if score @s item_font matches -100..-1 run tellraw @s [{"text":"","color":"green"},{"text":"[Item Font]","color":"dark_green"}," Updated the ",{"text":"name","color":"aqua"}," of your selected item: ",[{"text":"","color":"white","italic":true},{"nbt":"display.Name","storage":"pandamium:temp","interpret":true}]]
execute if score <returned> variable matches 0 if score @s item_font matches -104..-101 run tellraw @s [{"text":"","color":"green"},{"text":"[Item Font]","color":"dark_green"}," Updated the ",{"text":"name and lore","color":"aqua"}," of your selected item!"]
execute if score <returned> variable matches 0 run playsound ui.cartography_table.take_result master @s


scoreboard players reset @s item_font
scoreboard players enable @s item_font

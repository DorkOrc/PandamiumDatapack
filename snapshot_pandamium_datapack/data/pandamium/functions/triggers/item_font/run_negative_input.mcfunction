# enter gradient left index
execute if score <returned> variable matches 0 if score @s item_font matches -239..-201 run function pandamium:impl/font/custom_fonts/gradient/enter_left_colour

# Everything Else
execute if score <returned> variable matches 0 run data modify storage pandamium:temp nbt set from entity @s
execute if score <returned> variable matches 0 unless data storage pandamium:temp nbt.SelectedItem store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" There is no item in your main hand!","color":"red"}]

execute if score <returned> variable matches 0 run function pandamium:impl/font/check_item_display_requirements
execute if score <returned> variable matches 0 if score <can_edit> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" The item in your main hand has no custom name, or there is no lore on that line! Name the item using an anvil to change its font and give it lore.","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation <font> variable = @s item_font
execute if score <returned> variable matches 0 run scoreboard players operation <font> variable *= #-1 constant
execute if score <returned> variable matches 0 run scoreboard players set <edit_mainhand_name> variable 1
execute if score <returned> variable matches 0 unless score <font> variable matches 1..100 unless score <font> variable matches 301..400 run scoreboard players set <edit_mainhand_name> variable 0

execute if score <returned> variable matches 0 if data storage pandamium:temp nbt.SelectedItem.tag.pandamium.font.cannot_modify{all:1b} store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the display properties of that item!","color":"red"}]
execute if score <returned> variable matches 0 if score <edit_mainhand_name> variable matches 1 if data storage pandamium:temp nbt.SelectedItem.tag.pandamium.font.cannot_modify{name:1b} store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the name of that item!","color":"red"}]
execute if score <returned> variable matches 0 if score @s item_font matches -200..-101 run function pandamium:impl/font/check_can_modify_lore

# Do Edit
execute if score <returned> variable matches 0 run scoreboard players set <valid_option> variable 0
execute if score <returned> variable matches 0 if score <edit_mainhand_name> variable matches 1 run function pandamium:impl/font/edit_mainhand_name
execute if score <returned> variable matches 0 if score <font> variable matches 101..104 run function pandamium:impl/font/edit_mainhand_lore

execute if score <returned> variable matches 0 if score <valid_option> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 if score <text_changed> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

# Success
execute if score <returned> variable matches 0 if score <edit_mainhand_name> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Item Font]","color":"dark_green"}," Updated the ",{"text":"name","color":"aqua"}," of your selected item: ",[{"text":"","color":"white","italic":true},{"nbt":"display.Name","storage":"pandamium:temp","interpret":true}]]
execute if score <returned> variable matches 0 if score @s item_font matches -104..-101 run tellraw @s [{"text":"","color":"green"},{"text":"[Item Font]","color":"dark_green"}," Updated the ",{"text":"name and lore","color":"aqua"}," of your selected item!"]
execute if score <returned> variable matches 0 run playsound ui.cartography_table.take_result master @s

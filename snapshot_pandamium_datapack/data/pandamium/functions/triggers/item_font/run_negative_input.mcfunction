# -99..-1: generic
# -199..-101: left_colour_input
# -1999..-1001: style_input

# enter gradient left index
execute if score @s item_font matches -199..-101 run scoreboard players set <left_colour_id> variable -100
execute if score @s item_font matches -199..-101 run scoreboard players operation <left_colour_id> variable -= @s item_font
execute if score @s item_font matches -199..-101 run function pandamium:impl/font/custom_styles/gradient/enter_left_colour
execute if score @s item_font matches -199..-101 run return 1

#> everything else requires a selected item
# get mainhand item
data modify storage pandamium:temp item set value {}
data modify storage pandamium:temp item set from entity @s SelectedItem
execute unless data storage pandamium:temp item.id run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" There is no item in your main hand!","color":"red"}]
execute unless data storage pandamium:temp item.id run return 0

# extend stored custom item
execute if data storage pandamium:temp item.tag.pandamium.id run function pandamium:utils/extend_stored_custom_item

# due to MC-264710, cannot use `execute if function`, so used extra logic (below)
execute store result score <result> variable run function pandamium:triggers/item_font/check_basic_requirements
execute if score <result> variable matches 0 run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" The item in your main hand has no custom name, or there is no lore on that line! Name the item using an anvil to change its font and give it lore.","color":"red"}]
execute if score <result> variable matches 0 run return 0
execute if data storage pandamium:temp item.tag.pandamium.font.cannot_modify{all:1b} run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the display properties of that item!","color":"red"}]
execute if data storage pandamium:temp item.tag.pandamium.font.cannot_modify{all:1b} run return 0
execute if data storage pandamium:temp item.tag.pandamium.font.cannot_modify{name:1b} run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the name of that item!","color":"red"}]
execute if data storage pandamium:temp item.tag.pandamium.font.cannot_modify{name:1b} run return 0
execute if score @s item_font matches -4..-1 store result score <result> variable run function pandamium:triggers/item_font/check_can_modify_lore
execute if score @s item_font matches -4..-1 if score <result> variable matches 0 run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the lore of that item!","color":"red"}]
execute if score @s item_font matches -4..-1 if score <result> variable matches 0 run return 0

# get info
execute store success score <modify_style> variable if score @s item_font matches -1999..-1001
execute store success score <modify_lore> variable if score @s item_font matches -4..-1

# do edit
scoreboard players set <valid_option> variable 0
execute if score <modify_style> variable matches 1 run function pandamium:triggers/item_font/modify_name/main
execute if score <modify_lore> variable matches 1 run function pandamium:triggers/item_font/modify_lore/main

# failure
execute if score <returned> variable matches 1 run return 0
execute if score <valid_option> variable matches 0 run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <valid_option> variable matches 0 run return 0
execute if score <text_changed> variable matches 0 run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
execute if score <text_changed> variable matches 0 run return 0

# success
item modify entity @s weapon.mainhand pandamium:font/replace_display_from_storage
playsound ui.cartography_table.take_result master @s
execute if score <modify_style> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Item Font]","color":"dark_green"}," Updated the ",{"text":"name","color":"aqua"}," of your selected item: ",[{"text":"","color":"white","italic":true},{"nbt":"item.tag.display.Name","storage":"pandamium:temp","interpret":true}]]
execute if score <modify_style> variable matches 1 run return 0
execute if score <modify_lore> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Item Font]","color":"dark_green"}," Updated the ",{"text":"name and lore","color":"aqua"}," of your selected item!"]
execute if score <modify_lore> variable matches 1 run return 0

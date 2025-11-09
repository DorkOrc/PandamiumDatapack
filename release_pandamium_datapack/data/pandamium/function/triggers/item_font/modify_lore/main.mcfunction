execute unless items entity @s weapon.* * run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You are not holding an item! Hold an item in your hand to edit its name or lore.",color:"red"}]

# copy item and check properties
execute store success score <mainhand> variable if items entity @s weapon.mainhand *
execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand

execute in pandamium:staff_world if items block 5 0 0 contents *[custom_data~{pandamium:{font:{cannot_modify:{all:1b}}}}] run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify this item!",color:"red"}]
execute in pandamium:staff_world if items block 5 0 0 contents *[custom_data~{pandamium:{font:{cannot_modify:{lore:1b}}}}] run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify the lore of this item!",color:"red"}]

execute in pandamium:staff_world if data block 5 0 0 item.components."minecraft:custom_data".pandamium.stored_mob run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify the lore of this item!",color:"red"}]

execute store success score <is_guidebook> variable if items block 5 0 0 contents written_book[written_book_content]
execute \
    if score <is_guidebook> variable matches 1 \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"jamieamie",title:"Pandamium Guidebook",generation:3}] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"JamieTheAngel",title:"Pandamium Guidebook",generation:3}] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"",title:""},tooltip_display] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"DorkOrc, JamieTheAngel and KittyAcel",title:"Pandamium Guidebook"}] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"DorkOrc, Jamie_Angel and KittyAcel",title:"Pandamium Guidebook"}] \
    unless items block 5 0 0 contents written_book[custom_data~{pandamium:{guidebook:1b}}] \
    unless items block 5 0 0 contents written_book[custom_data~{pandamium:{guidebook:{}}}] \
    unless items block 5 0 0 contents written_book[custom_data~{pandamium:{id:"guidebook"}}] \
    run scoreboard players set <is_guidebook> variable 0
execute if score <is_guidebook> variable matches 1 run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify the lore of this item!",color:"red"}]

execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand

# do swap
scoreboard players set <swap_line> variable 0
scoreboard players operation <swap_line> variable -= @s item_font
execute unless score <swap_line> variable matches 1..4 run return run tellraw @s [{color:"dark_red",text:"[Item Font]"},{color:"red",text:" That is not a valid option"}]

function pandamium:triggers/item_font/modify_lore/do_swap

# check difference
execute store success score <data_changed> variable in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".item set from block 5 0 0 item
execute if score <data_changed> variable matches 0 run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" Nothing changed!",color:"red"}]

# replace the player's held item with the now-modified item
execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace entity @s weapon.mainhand from block 5 0 0 contents
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace entity @s weapon.offhand from block 5 0 0 contents

# feedback
execute if score <swap_line> variable matches 1 run tellraw @s [{text:"[Item Font]",color:"dark_green"},{text:" Updated your held item's ",extra:[{text:"lore and name",color:"aqua"},"! Swapped lore line 1 with the item name."],color:"green"}]
execute if score <swap_line> variable matches 2 run tellraw @s [{text:"[Item Font]",color:"dark_green"},{text:" Updated your held item's ",extra:[{text:"lore and name",color:"aqua"},"! Swapped lore line 2 with the item name."],color:"green"}]
execute if score <swap_line> variable matches 3 run tellraw @s [{text:"[Item Font]",color:"dark_green"},{text:" Updated your held item's ",extra:[{text:"lore and name",color:"aqua"},"! Swapped lore line 3 with the item name."],color:"green"}]
execute if score <swap_line> variable matches 4 run tellraw @s [{text:"[Item Font]",color:"dark_green"},{text:" Updated your held item's ",extra:[{text:"lore and name",color:"aqua"},"! Swapped lore line 4 with the item name."],color:"green"}]

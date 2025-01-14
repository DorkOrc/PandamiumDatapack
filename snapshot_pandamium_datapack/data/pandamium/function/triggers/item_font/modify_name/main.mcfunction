execute unless items entity @s weapon.* * run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You are not holding an item! Hold an item in your hand to edit its name or lore.",color:"red"}]

# copy item and check properties
execute store success score <mainhand> variable if items entity @s weapon.mainhand *
execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand

execute in pandamium:staff_world run item modify block 5 0 0 contents pandamium:extend_custom_item
execute in pandamium:staff_world if items block 5 0 0 contents *[custom_data~{pandamium:{font:{cannot_modify:{all:1b}}}}] run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify this item!",color:"red"}]
execute in pandamium:staff_world if items block 5 0 0 contents *[custom_data~{pandamium:{font:{cannot_modify:{name:1b}}}}] run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify the name of this item!",color:"red"}]

execute in pandamium:staff_world if data block 5 0 0 item.components."minecraft:custom_data".pandamium.stored_mob run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify the name of this item!",color:"red"}]
execute store success score <is_guidebook> variable in pandamium:staff_world if items block 5 0 0 contents written_book[written_book_content]
execute if score <is_guidebook> variable matches 1 \
    in pandamium:staff_world \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"jamieamie",title:"Pandamium Guidebook",generation:3}] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"JamieTheAngel",title:"Pandamium Guidebook",generation:3}] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"",title:""},hide_additional_tooltip] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"DorkOrc, JamieTheAngel and KittyAcel",title:"Pandamium Guidebook"}] \
    unless items block 5 0 0 contents written_book[written_book_content~{author:"DorkOrc, Jamie_Angel and KittyAcel",title:"Pandamium Guidebook"}] \
    unless items block 5 0 0 contents written_book[custom_data~{pandamium:{guidebook:1b}}] \
    unless items block 5 0 0 contents written_book[custom_data~{pandamium:{guidebook:{}}}] \
    unless items block 5 0 0 contents written_book[custom_data~{pandamium:{id:"guidebook"}}] \
    run scoreboard players set <is_guidebook> variable 0
execute if score <is_guidebook> variable matches 1 run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" You may not modify the name of this item!",color:"red"}]

scoreboard players set <allow_custom_name> variable 1
execute in pandamium:staff_world if data block 5 0 0 item.components.minecraft:custom_data.pandamium.font.ignore_custom_name store success score <allow_custom_name> variable run data modify block 5 0 0 item.components.minecraft:custom_name set from block 5 0 0 item.components.minecraft:custom_data.pandamium.font.ignore_custom_name
execute if score <allow_custom_name> variable matches 0 run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" The item you are holding does not have a name!",color:"red"}]

execute in pandamium:staff_world unless items block 5 0 0 contents *[custom_name] run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" The item you are holding does not have a name!",color:"red"}]

execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand

# get style ID
scoreboard players set <style> variable -1000
scoreboard players operation <style> variable -= @s item_font

# store item data
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".item set from block 5 0 0 item

# apply style to the item's custom_name component
data modify storage pandamium:temp text set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components."minecraft:custom_name"
scoreboard players set <returned> variable 0
function pandamium:impl/font/apply_style/main
execute if score <returned> variable matches 1 run return 0
execute unless score <valid_option> variable matches 1 run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

execute in pandamium:staff_world run item modify block 5 0 0 contents {function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:temp",nbt:"text",interpret:true}}

# check difference
execute store success score <data_changed> variable in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".item set from block 5 0 0 item
execute if score <data_changed> variable matches 0 run return run tellraw @s [{text:"[Item Font]",color:"dark_red"},{text:" Nothing changed!",color:"red"}]

# replace the player's held item with the now-modified item
execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace entity @s weapon.mainhand from block 5 0 0 contents
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace entity @s weapon.offhand from block 5 0 0 contents

# feedback
tellraw @s [{text:"[Item Font]",color:"dark_green"},{text:" Updated your held item's ",extra:[{text:"name",color:"aqua"},{text:"!"}],color:"green"}]

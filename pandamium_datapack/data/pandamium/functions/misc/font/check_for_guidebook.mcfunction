scoreboard players set <is_guidebook> variable 1
execute unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:jamieamie,generation:3} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:JamieTheAngel,generation:3} unless data storage pandamium:temp NBT.SelectedItem.tag{HideFlags:63,title:"",author:""} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:"DorkOrc, JamieTheAngel and KittyAcel"} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:"DorkOrc, Jamie_Angel and KittyAcel"} unless data storage pandamium:temp NBT.SelectedItem.tag.pandamium.guidebook run scoreboard players set <is_guidebook> variable 0

# Give guidebooks the pandamium.guidebook tag so that their lore cannot be edited
execute if score <is_guidebook> variable matches 1 unless data storage pandamium:temp NBT.SelectedItem.tag.pandamium.guidebook run item modify entity @s weapon.mainhand pandamium:tag_guidebook
execute if score <is_guidebook> variable matches 1 unless data storage pandamium:temp NBT.SelectedItem.tag.pandamium.guidebook run data modify storage pandamium:temp NBT.SelectedItem set from entity @s SelectedItem

execute store success score <returned> variable if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.font.cannot_modify{lore:1b}
execute if score <returned> variable matches 0 store success score <returned> variable if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_mob

execute if score <returned> variable matches 0 run scoreboard players set <is_guidebook> variable 1
execute if score <returned> variable matches 0 unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'}.tag{title:"Pandamium Guidebook",author:jamieamie,generation:3} unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'}.tag{title:"Pandamium Guidebook",author:JamieTheAngel,generation:3} unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'}.tag{HideFlags:63,title:"",author:""} unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'}.tag{title:"Pandamium Guidebook",author:"DorkOrc, JamieTheAngel and KittyAcel"} unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'}.tag{title:"Pandamium Guidebook",author:"DorkOrc, Jamie_Angel and KittyAcel"} unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'}.tag.pandamium.guidebook run scoreboard players set <is_guidebook> variable 0
execute if score <returned> variable matches 0 store success score <returned> variable if score <is_guidebook> variable matches 1

execute store success score <returned> variable if score <returned> variable matches 1 run tellraw @s [{"text":"[Item Font]","color":"dark_red"},{"text":" You cannot modify the lore of that item!","color":"red"}]

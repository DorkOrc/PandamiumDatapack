scoreboard players set <is_guidebook> variable 1
execute unless data storage pandamium:temp NBT.SelectedItem{id:'minecraft:written_book'} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:jamieamie,generation:3} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:JamieTheAngel,generation:3} unless data storage pandamium:temp NBT.SelectedItem.tag{HideFlags:63,title:"",author:""} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:"DorkOrc, JamieTheAngel and KittyAcel"} unless data storage pandamium:temp NBT.SelectedItem.tag{title:"Pandamium Guidebook",author:"DorkOrc, Jamie_Angel and KittyAcel"} unless data storage pandamium:temp NBT.SelectedItem.tag.pandamium.guidebook run scoreboard players set <is_guidebook> variable 0

execute store success score <can_modify_lore> variable if score <is_guidebook> variable matches 0
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium run scoreboard players set <can_modify_lore> variable 0

execute store success score <can_run> variable if score <can_modify_lore> variable matches 1

execute store success score <has_filtered_version> variable if data storage pandamium:containers items[0].filtered

execute if score <has_filtered_version> variable matches 0 run tellraw @s ["",{text:"pages.",color:"aqua",underlined:true,extra:[{score:{name:"<page>",objective:"variable"}}]},": ",{text:"[raw]",color:"dark_gray",hover_event:{action:"show_text",value:{nbt:"items[0].raw",storage:"pandamium:containers",interpret:true}}}]
execute if score <has_filtered_version> variable matches 1 run tellraw @s ["",{text:"pages.",color:"aqua",underlined:true,extra:[{score:{name:"<page>",objective:"variable"}}]},": ",{text:"[raw]",color:"dark_gray",hover_event:{action:"show_text",value:{nbt:"items[0].raw",storage:"pandamium:containers",interpret:true}}}," ",{text:"[filtered]",color:"dark_gray",hover_event:{action:"show_text",value:{nbt:"items[0].filtered",storage:"pandamium:containers",interpret:true}}}]

scoreboard players add <page> variable 1
data remove storage pandamium:containers items[0]
execute if data storage pandamium:containers items[0] run function pandamium:impl/containers/run/book_ui

data modify storage pandamium:temp origin_trigger set from storage pandamium.db.click_events:io selected.entry.data.origin_trigger
function pandamium:triggers/search_players/keyboard_menu/main with storage pandamium:templates macro.search

# 0 or too many results
execute if score <results> variable matches 0 run return run tellraw @s {text:"Click a key to start searching for players",color:"green"}
execute if score <results> variable matches 11.. run return run tellraw @s ["",{score:{name:"<results>",objective:"variable"},color:"green",extra:[' Results for "',{storage:"pandamium:templates",nbt:"macro.search.search",interpret:true},'": ']},{text:"[Hover to See Results]",color:"dark_gray",hover_event:{action:"show_text",value:{storage:"pandamium:temp",nbt:"results[]",interpret:true,separator:{text:", ",color:"gray"},color:"green"}}}]

# few results
data modify storage pandamium:temp display_results set value []
execute if data storage pandamium:temp results[0] run function pandamium:triggers/search_players/click_events/search_names/loop
execute if score <results> variable matches 1 run tellraw @s ["",{text:'1 Result for "',color:"green",extra:[{storage:"pandamium:templates",nbt:"macro.search.search",interpret:true},'": ']},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"display_results[]",interpret:true,separator:{text:", ",color:"gray"}}]}]
execute if score <results> variable matches 2..10 run tellraw @s ["",{score:{name:"<results>",objective:"variable"},color:"green",extra:[' Results for "',{storage:"pandamium:templates",nbt:"macro.search.search",interpret:true},'": ']},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"display_results[]",interpret:true,separator:{text:", ",color:"gray"}}]}]

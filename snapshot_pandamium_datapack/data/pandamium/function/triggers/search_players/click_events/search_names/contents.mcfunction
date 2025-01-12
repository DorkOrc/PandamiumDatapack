data modify storage pandamium:temp origin_trigger set from storage pandamium.db.click_events:io selected.entry.data.origin_trigger
function pandamium:triggers/search_players/keyboard_menu/main with storage pandamium:templates macro.search

# 0 or too many results
execute if score <results> variable matches 0 run return run tellraw @s {text:"Click a key to start searching for players",color:"green"}
execute if score <results> variable matches 11.. run return run tellraw @s [{text:""},{score:{name:"<results>",objective:"variable"},color:"green",extra:[{text:' Results for "'},{storage:"pandamium:templates",nbt:"macro.search.search"},{text:'": '}]},{text:"[Hover to See Results]",color:"dark_gray",hover_event:{action:"show_text",text:{storage:"pandamium:temp",nbt:"results[]",separator:{text:", ",color:"gray"},color:"green"}}}]

# few results
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players set <index> variable 0
function pandamium:triggers/search_players/click_events/search_names/loop with storage pandamium:templates macro.index
execute if score <results> variable matches 1 run tellraw @s [{text:""},{text:'1 Result for "',color:"green",extra:[{storage:"pandamium:templates",nbt:"macro.search.search"},{text:'": '}]},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"results[]",interpret:true,separator:{text:", ",color:"gray"}}]}]
execute if score <results> variable matches 2..10 run tellraw @s [{text:""},{score:{name:"<results>",objective:"variable"},color:"green",extra:[{text:' Results for "'},{storage:"pandamium:templates",nbt:"macro.search.search"},{text:'": '}]},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"results[]",interpret:true,separator:{text:", ",color:"gray"}}]}]

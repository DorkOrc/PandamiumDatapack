execute if score @s item_clear matches 1.. run return run tellraw @s [{text:"[Item Clear]",color:"dark_red"},{text:" Confirm Item Clear ",color:"red"},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",text:[{text:"Click to clear ",color:"dark_green"},{text:"Simple Items",bold:true},{text:" and "},{text:"Arrows",bold:true},{text:" now"}]},click_event:{action:"run_command",command:"trigger item_clear set -2"}},{text:" "},{text:"[⌛]",color:"blue",hover_event:{action:"show_text",text:[{text:"Click to clear ",color:"blue"},{text:"Common Items",bold:true},{text:" in 30 seconds"}]},click_event:{action:"run_command",command:"trigger item_clear set -1"}}]

execute if score @s item_clear matches -1 run scoreboard players set <regular_item_clear_timer> global 31
execute if score @s item_clear matches -1 run return run tellraw @s [{text:"[Item Clear]",color:"dark_green"},{text:" Clearing common items in ",color:"green",extra:[{text:"30 seconds",color:"aqua"},{text:"!"}]}]

execute if score @s item_clear matches -2 run function pandamium:impl/item_clear/simple
execute if score @s item_clear matches -2 run return run tellraw @s [{text:"[Item Clear]",color:"dark_green"},{text:" Cleared simple items and arrows!",color:"green"}]

# else
tellraw @s [{text:"[Item Clear]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

execute if score @s jailed matches 1.. run tellraw @s [{text:"[Clear Inventory]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]
execute unless score @s jailed matches 1.. if score @s clear_inventory matches 1.. run tellraw @s [{text:"",color:"red"},{text:"[Clear Inventory]",color:"dark_red"},{text:" Are you sure you want to "},{text:"permanently delete all items",underlined:true},{text:" from your inventory? "},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",text:[{text:"Click to ",color:"dark_green"},{text:"permanently delete all\nitems",bold:true},{text:" from your inventory"}]},click_event:{action:"run_command",command:"trigger clear_inventory set -2147483648"}}]

execute unless score @s jailed matches 1.. if score @s clear_inventory matches -2147483648 run clear @s
execute unless score @s jailed matches 1.. if score @s clear_inventory matches -2147483648 run particle cloud ~ ~0.8 ~ 0.2 0.8 0.2 0.1 50
execute unless score @s jailed matches 1.. if score @s clear_inventory matches -2147483648 run tellraw @s [{text:"[Clear Inventory]",color:"dark_green"},{text:" Cleared everything in your inventory!",color:"green"}]

scoreboard players reset @s clear_inventory
scoreboard players enable @s clear_inventory

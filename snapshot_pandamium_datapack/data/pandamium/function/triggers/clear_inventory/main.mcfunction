function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": clear_inventory ",{score:{name:"@s",objective:"clear_inventory"}},"]"]

execute if score @s jailed matches 1.. run tellraw @s [{text:"[Clear Inventory]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]
execute unless score @s jailed matches 1.. if score @s clear_inventory matches 1.. run tellraw @s [{text:"",color:"red"},{text:"[Clear Inventory]",color:"dark_red"}," Are you sure you want to ",{text:"permanently delete all items",underlined:true}," from your inventory? ",{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to ",color:"dark_green"},{text:"permanently delete all\nitems",bold:true}," from your inventory"]},click_event:{action:"run_command",command:"trigger clear_inventory set -2147483648"}}]

execute unless score @s jailed matches 1.. if score @s clear_inventory matches -2147483648 run clear @s
execute unless score @s jailed matches 1.. if score @s clear_inventory matches -2147483648 run particle cloud ~ ~0.8 ~ 0.2 0.8 0.2 0.1 50
execute unless score @s jailed matches 1.. if score @s clear_inventory matches -2147483648 run tellraw @s [{text:"[Clear Inventory]",color:"dark_green"},{text:" Cleared everything in your inventory!",color:"green"}]

scoreboard players reset @s clear_inventory
scoreboard players enable @s clear_inventory

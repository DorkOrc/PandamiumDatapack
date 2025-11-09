function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": item_font ",{score:{name:"@s",objective:"item_font"}},"]"]

function pandamium:triggers/item_font/logic

scoreboard players reset @s item_font
scoreboard players enable @s item_font

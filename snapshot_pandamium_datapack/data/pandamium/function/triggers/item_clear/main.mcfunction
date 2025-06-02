function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": item_clear ",{score:{name:"@s",objective:"item_clear"}},"]"]

function pandamium:triggers/item_clear/logic

scoreboard players reset @s item_clear
scoreboard players enable @s item_clear

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": hat ",{score:{name:"@s",objective:"hat"}},"]"]

execute in pandamium:staff_world run function pandamium:triggers/hat/logic

scoreboard players reset @s hat
scoreboard players enable @s hat

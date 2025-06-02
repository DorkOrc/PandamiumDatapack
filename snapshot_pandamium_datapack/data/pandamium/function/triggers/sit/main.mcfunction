function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": sit ",{score:{name:"@s",objective:"sit"}},"]"]

function pandamium:triggers/sit/logic

scoreboard players reset @s sit
scoreboard players enable @s sit

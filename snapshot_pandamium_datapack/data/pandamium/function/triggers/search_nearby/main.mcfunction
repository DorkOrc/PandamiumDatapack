function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": search_nearby ",{score:{name:"@s",objective:"search_nearby"}},"]"]

function pandamium:triggers/search_nearby/logic

scoreboard players reset @s search_nearby
scoreboard players enable @s search_nearby

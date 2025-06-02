function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": playtime ",{score:{name:"@s",objective:"playtime"}},"]"]

tag @s add source
scoreboard players set <returned> variable 0

function pandamium:triggers/playtime/logic

tag @a remove target
tag @s remove source
scoreboard players reset @s playtime
scoreboard players enable @s playtime

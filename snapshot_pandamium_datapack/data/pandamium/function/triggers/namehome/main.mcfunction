function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": namehome ",{score:{name:"@s",objective:"namehome"}},"]"]

function pandamium:triggers/namehome/logic

scoreboard players reset @s namehome
scoreboard players enable @s namehome

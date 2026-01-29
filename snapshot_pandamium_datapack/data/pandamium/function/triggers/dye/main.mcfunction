function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": dye ",{score:{name:"@s",objective:"dye"}},"]"]

function pandamium:triggers/dye/logic

scoreboard players reset @s dye
scoreboard players enable @s dye

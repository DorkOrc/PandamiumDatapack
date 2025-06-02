function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": hide ",{score:{name:"@s",objective:"hide"}},"]"]

function pandamium:triggers/hide/logic

scoreboard players reset @s hide
scoreboard players enable @s hide

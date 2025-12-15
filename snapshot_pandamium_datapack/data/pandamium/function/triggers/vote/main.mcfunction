function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": vote ",{score:{name:"@s",objective:"vote"}},"]"]

function pandamium:triggers/vote/logic

scoreboard players reset @s vote
scoreboard players enable @s vote

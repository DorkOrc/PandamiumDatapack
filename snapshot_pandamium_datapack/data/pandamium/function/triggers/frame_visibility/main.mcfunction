function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": frame_visibility ",{score:{name:"@s",objective:"frame_visibility"}},"]"]

function pandamium:triggers/frame_visibility/logic

tag @s remove source
scoreboard players reset @s frame_visibility
scoreboard players enable @s frame_visibility

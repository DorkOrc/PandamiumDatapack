function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": pose ",{score:{name:"@s",objective:"pose"}},"]"]

tag @s add source
scoreboard players set <returned> variable 0
scoreboard players set <sound> variable 0

function pandamium:triggers/pose/logic

tag @s remove source
scoreboard players reset @s pose
scoreboard players enable @s pose

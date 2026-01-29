function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": spawn ",{score:{name:"@s",objective:"spawn"}},"]"]

function pandamium:triggers/spawn/logic

scoreboard players reset @s spawn
scoreboard players enable @s spawn

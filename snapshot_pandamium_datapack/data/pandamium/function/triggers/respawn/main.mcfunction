function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": respawn ",{score:{name:"@s",objective:"respawn"}},"]"]

function pandamium:triggers/respawn/logic

scoreboard players reset @s respawn
scoreboard players enable @s respawn

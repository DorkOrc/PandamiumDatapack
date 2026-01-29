function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": particles ",{score:{name:"@s",objective:"particles"}},"]"]

function pandamium:triggers/particles/logic

scoreboard players reset @s particles
scoreboard players enable @s particles

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": staff_world ",{score:{name:"@s",objective:"staff_world"}},"]"]

function pandamium:triggers/staff_world/logic

scoreboard players reset @s staff_world
scoreboard players enable @s staff_world

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": report ",{score:{name:"@s",objective:"report"}},"]"]

tag @s add source
function pandamium:triggers/report/logic
tag @s remove source

scoreboard players reset @s report
scoreboard players enable @s report

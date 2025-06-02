function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": leaderboards ",{score:{name:"@s",objective:"leaderboards"}},"]"]

function pandamium:triggers/leaderboards/logic

scoreboard players reset @s leaderboards
scoreboard players enable @s leaderboards

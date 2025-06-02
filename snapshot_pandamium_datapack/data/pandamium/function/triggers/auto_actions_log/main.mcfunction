function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": auto_actions_log ",{score:{name:"@s",objective:"auto_actions_log"}},"]"]

function pandamium:triggers/auto_actions_log/logic

scoreboard players reset @s auto_actions_log
scoreboard players enable @s auto_actions_log

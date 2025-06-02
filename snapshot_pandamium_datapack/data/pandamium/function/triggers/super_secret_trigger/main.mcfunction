function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": super_secret_trigger ",{score:{name:"@s",objective:"super_secret_trigger"}},"]"]

function pandamium:triggers/super_secret_trigger/logic

scoreboard players reset @s super_secret_trigger
scoreboard players enable @s super_secret_trigger

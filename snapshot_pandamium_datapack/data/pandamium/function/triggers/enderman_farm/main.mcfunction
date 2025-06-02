function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": enderman_farm ",{score:{name:"@s",objective:"enderman_farm"}},"]"]

function pandamium:triggers/enderman_farm/logic

scoreboard players reset @s enderman_farm
scoreboard players enable @s enderman_farm

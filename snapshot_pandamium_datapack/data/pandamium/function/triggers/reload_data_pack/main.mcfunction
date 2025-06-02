function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": reload_data_pack ",{score:{name:"@s",objective:"reload_data_pack"}},"]"]

function pandamium:triggers/reload_data_pack/logic

scoreboard players reset @s reload_data_pack
scoreboard players enable @s reload_data_pack

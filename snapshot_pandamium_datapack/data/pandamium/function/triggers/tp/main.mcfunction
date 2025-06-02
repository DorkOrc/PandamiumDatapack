function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": tp ",{score:{name:"@s",objective:"tp"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/tp/logic

tag @a remove target
tag @s remove source
scoreboard players reset @s tp
scoreboard players enable @s tp

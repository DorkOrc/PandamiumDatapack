function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": player_info ",{score:{name:"@s",objective:"player_info"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
tag @s add source
data modify storage pandamium:temp arguments set value {}

function pandamium:triggers/player_info/logic

tag @s remove source
scoreboard players reset @s player_info
scoreboard players enable @s player_info

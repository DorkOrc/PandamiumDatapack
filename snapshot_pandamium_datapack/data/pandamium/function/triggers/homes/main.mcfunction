function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": homes ",{score:{name:"@s",objective:"homes"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
data modify storage pandamium:temp arguments set value {}

function pandamium:triggers/homes/logic

scoreboard players reset @s homes
scoreboard players enable @s homes

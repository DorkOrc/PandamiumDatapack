function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": kick ",{score:{name:"@s",objective:"kick"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

tag @s add source
function pandamium:triggers/kick/logic
tag @s remove source

scoreboard players reset @s kick
scoreboard players enable @s kick

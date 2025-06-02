function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": kick ",{score:{name:"@s",objective:"kick"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/kick/logic

scoreboard players reset @s kick
scoreboard players enable @s kick

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": restart_server ",{score:{name:"@s",objective:"restart_server"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/restart_server/logic

scoreboard players reset @s restart_server
scoreboard players enable @s restart_server

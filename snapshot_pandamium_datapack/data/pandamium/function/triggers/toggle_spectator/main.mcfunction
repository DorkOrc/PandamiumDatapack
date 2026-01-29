function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": toggle_spectator ",{score:{name:"@s",objective:"toggle_spectator"}},"]"]

function pandamium:triggers/toggle_spectator/logic

scoreboard players reset @s toggle_spectator
scoreboard players enable @s toggle_spectator

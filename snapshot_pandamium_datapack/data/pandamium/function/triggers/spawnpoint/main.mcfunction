function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": spawnpoint ",{score:{name:"@s",objective:"spawnpoint"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/spawnpoint/logic

scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint

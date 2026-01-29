function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": take_enderchest ",{score:{name:"@s",objective:"take_enderchest"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/take_enderchest/logic

scoreboard players reset @s take_enderchest
scoreboard players enable @s take_enderchest

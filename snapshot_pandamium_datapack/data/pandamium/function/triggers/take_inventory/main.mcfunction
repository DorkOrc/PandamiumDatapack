function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": take_inventory ",{score:{name:"@s",objective:"take_inventory"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/take_inventory/logic

scoreboard players reset @s take_inventory
scoreboard players enable @s take_inventory

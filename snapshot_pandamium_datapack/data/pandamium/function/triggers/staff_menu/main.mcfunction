function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": staff_menu ",{score:{name:"@s",objective:"staff_menu"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/staff_menu/print_menu/main

tag @s remove source
scoreboard players reset @s staff_menu
scoreboard players enable @s staff_menu

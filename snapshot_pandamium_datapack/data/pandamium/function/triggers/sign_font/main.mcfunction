function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": sign_font ",{score:{name:"@s",objective:"sign_font"}},"]"]

tag @s add source
scoreboard players set <returned> variable 0

function pandamium:triggers/sign_font/logic

tag @s remove source
scoreboard players reset @s sign_font
scoreboard players enable @s sign_font

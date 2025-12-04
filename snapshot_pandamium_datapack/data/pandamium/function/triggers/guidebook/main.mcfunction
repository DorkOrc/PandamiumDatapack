function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": guidebook ",{score:{name:"@s",objective:"guidebook"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes
scoreboard players set <returned> variable 0
tag @s add source

function pandamium:triggers/guidebook/logic

tag @a remove target
tag @s remove source
scoreboard players reset @s guidebook
scoreboard players enable @s[predicate=pandamium:player/min_staff_perms/helper] guidebook

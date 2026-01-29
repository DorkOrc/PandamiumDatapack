function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": flair ",{score:{name:"@s",objective:"flair"}},"]"]

function pandamium:player/teams/remove_suffix

function pandamium:triggers/flair/logic

function pandamium:player/teams/update_suffix

scoreboard players reset @s flair
scoreboard players enable @s flair

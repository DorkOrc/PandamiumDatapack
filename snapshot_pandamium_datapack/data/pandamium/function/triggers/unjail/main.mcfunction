function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},": unjail ",{score:{name:"@s",objective:"unjail"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/unjail/logic

scoreboard players reset @s unjail
scoreboard players enable @s unjail

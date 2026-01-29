function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},": search_players ",{score:{name:"@s",objective:"search_players"}},"]"]

function pandamium:utils/triggers/disable_player_suffixes

function pandamium:triggers/search_players/logic

scoreboard players reset @s search_players
scoreboard players enable @s search_players

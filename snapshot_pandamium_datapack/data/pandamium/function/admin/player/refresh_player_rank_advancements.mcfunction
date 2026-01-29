# arguments: username

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
$tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},': admin player/refresh_player_rank_advancements {username:"$(username)"}]']

$execute as $(username) run function pandamium:player/on_join/fix_data/give_rank_advancements

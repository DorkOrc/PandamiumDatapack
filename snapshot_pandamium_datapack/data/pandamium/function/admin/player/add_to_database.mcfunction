# arguments: username, uuid

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
$tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username"},': admin player/add_to_database {username:"$(username)",uuid:"$(uuid)"}]']

$function pandamium:impl/database/players/force_add_user_to_database/main {username:"$(username)",suuid:"$(uuid)"}

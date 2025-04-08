# arguments: target

# fail if already unjailed
$execute unless score $(target) jailed matches 1.. run return run function pandamium:utils/log_exception {args:{return:"fail",function:"pandamium:impl/punishment/unjail/unjail_target",message:"Tried to unjail $(target) but they were not jailed."}}

# reset jailed
$scoreboard players reset $(target) jailed
$scoreboard players reset $(target) cheater
$execute as $(target) run function pandamium:player/update_tablist_value

# warp to spawn
$execute as $(target) run function pandamium:misc/warp/spawn

# inform online player
$tellraw $(target) [{color:"dark_purple",text:"[Private Info]"},{color:"light_purple",text:" You have been unjailed!"}]

# success
return 1

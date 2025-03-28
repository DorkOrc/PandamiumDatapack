# arguments: username

$data modify storage pandamium:queue selected.entry.meta.name set value {text:"Updating $(username) rank-up advancement progress",color:"yellow"}

# set up data
$function pandamium:utils/get/rank_credits/from_username {username:"$(username)"}

$execute if score <rank_credits> variable matches 5.. run advancement grant $(username) only pandamium:pandamium/rank_up/player
$execute unless score <rank_credits> variable matches 5.. run advancement revoke $(username) only pandamium:pandamium/rank_up/player

$execute if score <rank_credits> variable matches 25.. run advancement grant $(username) only pandamium:pandamium/rank_up/member
$execute unless score <rank_credits> variable matches 25.. run advancement revoke $(username) only pandamium:pandamium/rank_up/member

$execute if score <rank_credits> variable matches 125.. run advancement grant $(username) only pandamium:pandamium/rank_up/elder
$execute unless score <rank_credits> variable matches 125.. run advancement revoke $(username) only pandamium:pandamium/rank_up/elder

$execute if score <rank_credits> variable matches 500.. run advancement grant $(username) only pandamium:pandamium/rank_up/veteran
$execute unless score <rank_credits> variable matches 500.. run advancement revoke $(username) only pandamium:pandamium/rank_up/veteran

$execute if score <rank_credits> variable matches 2500.. run advancement grant $(username) only pandamium:pandamium/rank_up/elite
$execute unless score <rank_credits> variable matches 2500.. run advancement revoke $(username) only pandamium:pandamium/rank_up/elite

execute unless score <rank_credits> variable matches 1.. run return run function pandamium:impl/queue/utils/cancel
scoreboard players set <step> variable 0
$execute if score <step> variable matches 0..4 as $(username) if entity @s[advancements={pandamium:pandamium/rank_up/player=true}] run scoreboard players set <step> variable 5
$execute if score <step> variable matches 5..24 as $(username) if entity @s[advancements={pandamium:pandamium/rank_up/member=true}] run scoreboard players set <step> variable 25
$execute if score <step> variable matches 25..124 as $(username) if entity @s[advancements={pandamium:pandamium/rank_up/elder=true}] run scoreboard players set <step> variable 125
$execute if score <step> variable matches 125..499 as $(username) if entity @s[advancements={pandamium:pandamium/rank_up/veteran=true}] run scoreboard players set <step> variable 500
$execute if score <step> variable matches 500..2499 as $(username) if entity @s[advancements={pandamium:pandamium/rank_up/elite=true}] run scoreboard players set <step> variable 2500

execute store result storage pandamium:queue selected.entry.step int 1 run scoreboard players get <step> variable
execute store result storage pandamium:queue selected.entry.rank_credits int 1 run scoreboard players get <rank_credits> variable

# set max value
execute store result storage pandamium:queue selected.entry.meta.max int 1 run scoreboard players get <rank_credits> variable

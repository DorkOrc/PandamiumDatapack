execute if score <target_is_online> variable matches 0 run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" The targetted player must be online for you to teleport to their last death location!","color":"red"}]

data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*" set value {}
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*" set from entity @a[predicate=pandamium:matches_id,limit=1] LastDeathLocation
execute unless data storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*".pos run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" This player has no last death location stored!","color":"red"}]

data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*".x set from storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*".pos[0]
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*".y set from storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*".pos[1]
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*".z set from storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*".pos[2]
function pandamium:utils/teleport/with_object_centred with storage pandamium:local functions."pandamium:triggers/player_info_v2/tp_last_death_location/*"

tellraw @s [{"text":"[Player Info]","color":"dark_green"},{"text":" Teleported to ","extra":[{"selector":"@a[predicate=pandamium:matches_id,limit=1]"},"'s last death location!"],"color":"green"}]

# arguments: username

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" There is no tracked user with the username \"$(username)\"!","color":"red"}]
$execute unless score $(username) vip_rank = $(username) vip_rank run return run tellraw @s [{"text":"[admin]","color":"dark_red"},[{"text":" ","color":"red"},{"text":"$(username)","color":"yellow"},"'s ",{"text":"vip","color":"yellow"}," rank is already ",{"text":"false","color":"yellow"},"!"]]
$execute if score $(username) vip_rank matches 0 run return run tellraw @s [{"text":"[admin]","color":"dark_red"},[{"text":" ","color":"red"},{"text":"$(username)","color":"yellow"},"'s ",{"text":"vip","color":"yellow"}," rank is already ",{"text":"false","color":"yellow"},"!"]]

$scoreboard players reset $(username) vip_rank
$execute as $(username) run kick @s [User Setup] Your §b[vip]§r rank has been set to §b§l[false]§r! You may rejoin when ready.
$tellraw @s [{"text":"[admin]","color":"dark_green"},[{"text":" Set ","color":"green"},{"text":"$(username)","color":"aqua"},"'s ",{"text":"vip","color":"aqua"}," rank to ",{"text":"false","color":"aqua"},"!"]]

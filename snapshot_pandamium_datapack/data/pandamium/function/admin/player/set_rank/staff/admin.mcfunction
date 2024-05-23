# arguments: username

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" There is no tracked user with the username \"$(username)\"!","color":"red"}]
$execute if score $(username) staff_rank matches 4 run return run tellraw @s [{"text":"[admin]","color":"dark_red"},[{"text":" ","color":"red"},{"text":"$(username)","color":"yellow"},"'s ",{"text":"staff","color":"yellow"}," rank is already ",{"text":"admin","color":"yellow"},"!"]]

$scoreboard players set $(username) staff_rank 4
$op $(username)
$execute as $(username) run kick @s [User Setup] Your §b[staff]§r rank has been set to §b§l[admin]§r! You may rejoin when ready.
$tellraw @s [{"text":"[admin]","color":"dark_green"},[{"text":" Set ","color":"green"},{"text":"$(username)","color":"aqua"},"'s ",{"text":"staff","color":"aqua"}," rank to ",{"text":"admin","color":"aqua"},"!"]]

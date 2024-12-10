# arguments: username

$execute if score $(username) on_join.tp_to_spawn matches 1 run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" ","extra":[{"selector":"@a[predicate=pandamium:matches_id,limit=1]"}," is already scheduled to be teleported to spawn once they join the server!"],"color":"red"}]

$scoreboard players set $(username) on_join.tp_to_spawn 1

tellraw @s [{"text":"[Player Info]","color":"dark_green"},{"text":" Teleported ","extra":[{"selector":"@a[predicate=pandamium:matches_id,limit=1]"}," to spawn!"],"color":"green"}]

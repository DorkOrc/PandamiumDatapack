# arguments: username

$execute if score $(username) on_join.tp_to_spawn matches 1 if score $(username) on_join.reset_spawnpoint matches 1 run return run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" ","extra":[{"storage":"pandamium:temp","nbt":"target","interpret":true}," is already scheduled to be teleported to spawn and have their spawnpoint reset once they join the server!"],"color":"red"}]

$scoreboard players set $(username) on_join.tp_to_spawn 1
$scoreboard players set $(username) on_join.reset_spawnpoint 1

tellraw @s [{"text":"[Player Info]","color":"dark_green"},{"text":" Scheduled ","extra":[{"storage":"pandamium:temp","nbt":"target","interpret":true}," to be teleported to spawn and have their spawnpoint reset when they join the server!"],"color":"green"}]

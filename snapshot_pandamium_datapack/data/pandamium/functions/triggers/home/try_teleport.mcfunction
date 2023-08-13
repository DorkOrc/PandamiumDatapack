$execute unless score @s home_$(home)_x = @s home_$(home)_x run return run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"text":"Home $(home)","color":"red","bold":true},{"text":" has not been set!","color":"red"}]

$scoreboard players operation <tp_x> variable = @s home_$(home)_x
$scoreboard players operation <tp_y> variable = @s home_$(home)_y
$scoreboard players operation <tp_z> variable = @s home_$(home)_z
$scoreboard players operation <tp_d> variable = @s home_$(home)_d

function pandamium:utils/teleport/to_scores
gamemode survival @s[gamemode=spectator,predicate=!pandamium:in_spawn,scores={staff_perms=..1}]

function pandamium:utils/database/load_self
$data modify storage pandamium:temp home_name set value '{"text":"Home $(home)","bold":true}'
$execute if data storage pandamium.db:players selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value '["",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).name","interpret":true}]]'

tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Teleported to ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true},"!"]

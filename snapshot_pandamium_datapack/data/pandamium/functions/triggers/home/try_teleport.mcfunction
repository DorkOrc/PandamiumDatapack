$execute unless score @s home_$(home)_x = @s home_$(home)_x run return run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"text":"Home $(home)","color":"red","bold":true},{"text":" has not been set!","color":"red"}]

$scoreboard players operation <tp_x> variable = @s home_$(home)_x
$scoreboard players operation <tp_y> variable = @s home_$(home)_y
$scoreboard players operation <tp_z> variable = @s home_$(home)_z
$scoreboard players operation <tp_d> variable = @s home_$(home)_d

function pandamium:utils/teleport/to_scores
gamemode survival @s[gamemode=spectator,predicate=!pandamium:in_spawn,scores={staff_perms=..1}]

$tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Teleported to ",{"text":"Home $(home)","color":"aqua"},"!"]

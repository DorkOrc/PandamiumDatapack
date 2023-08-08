$execute if score <do_replace> variable matches 0 if score @s home_$(home)_x = @s home_$(home)_x run return run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," Are you sure you want to replace ",{"text":"Home $(home)","bold":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to replace ","color":"dark_green"},{"text":"Home $(home)","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger sethome set -$(home)"}}]

function pandamium:utils/get/position
$scoreboard players operation @s home_$(home)_x = <x> variable
$scoreboard players operation @s home_$(home)_y = <y> variable
$scoreboard players operation @s home_$(home)_z = <z> variable
$execute store result score @s home_$(home)_d store result score <dimension> variable run function pandamium:utils/get/dimension_id

function pandamium:utils/get/dimension_name/from_score
$execute unless score @s hide_coordinates matches 1 run return run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Set ",{"text":"Home $(home)","color":"aqua"}," at ",{"score":{"name":"@s","objective":"home_$(home)_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_$(home)_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_$(home)_z"},"color":"aqua"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},"!"]
$execute if score @s hide_coordinates matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Set ",{"text":"Home $(home)","color":"aqua"}," at ",[{"score":{"name":"@s","objective":"home_$(home)_x"},"color":"aqua","obfuscated":true}," ",{"score":{"name":"@s","objective":"home_$(home)_y"}}," ",{"score":{"name":"@s","objective":"home_$(home)_z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},"!"]

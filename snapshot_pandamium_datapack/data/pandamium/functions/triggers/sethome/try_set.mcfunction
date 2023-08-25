# get home name
function pandamium:utils/database/load_self
$data modify storage pandamium:temp home_name set value '{"text":"Home $(home)","bold":true}'
$execute if data storage pandamium.db:players selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value '["",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).name","interpret":true}]," (Home $(home))"]'

# ask to confirm replace
$execute if score <do_replace> variable matches 0 if data storage pandamium.db:players selected.entry.data.homes.$(home) run return run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," Are you sure you want to replace ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to replace ","color":"dark_green"},{"storage":"pandamium:temp","nbt":"home_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger sethome set -$(home)"}}]

# reset name
$data remove storage pandamium.db:players selected.entry.data.homes.$(home).name

# set xyz and dimension
function pandamium:utils/get/position
$data modify storage pandamium.db:players selected.entry.data.homes.$(home).xyzd set value [I;0,0,0,0]
$execute store result storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[0] int 1 run scoreboard players operation @s home_$(home)_x = <x> variable
$execute store result storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[1] int 1 run scoreboard players operation @s home_$(home)_y = <y> variable
$execute store result storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[2] int 1 run scoreboard players operation @s home_$(home)_z = <z> variable
$execute store result storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[3] int 1 store result score @s home_$(home)_d store result score <dimension> variable run function pandamium:utils/get/dimension_id

# print success
function pandamium:utils/get/dimension_name/from_score
$execute unless score @s hide_coordinates matches 1 run return run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Set ",{"text":"Home $(home)","color":"aqua"}," at ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[0]","color":"aqua"}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[1]","color":"aqua"}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[2]","color":"aqua"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},"!"]
$execute if score @s hide_coordinates matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Set ",{"text":"Home $(home)","color":"aqua"}," at ",[{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[0]","color":"aqua","obfuscated":true}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[1]"}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[2]"}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},"!"]

function pandamium:utils/database/save

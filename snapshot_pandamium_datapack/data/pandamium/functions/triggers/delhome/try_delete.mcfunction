function pandamium:utils/database/load_self

# fail if home does not exist
$execute unless data storage pandamium.db:players selected.entry.data.homes.$(home) run  tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"text":"Home $(home)","color":"red","bold":true},{"text":" has not been set!","color":"red"}]
$execute unless data storage pandamium.db:players selected.entry.data.homes.$(home) run return 0

# get home name
$data modify storage pandamium:temp home_name set value '{"text":"Home $(home)","bold":true}'
$execute if data storage pandamium.db:players selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value '["",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).name","interpret":true}]," (Home $(home))"]'

# ask to confirm delete
$execute if score <do_replace> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," Are you sure you want to delete ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"storage":"pandamium:temp","nbt":"home_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger delhome set -$(home)"}}]
execute if score <do_replace> variable matches 0 run return 0

# print success
$execute store result score <dimension> variable run data get storage pandamium.db:players selected.entry.data.homes.$(home).xyzd[3]
function pandamium:utils/get/dimension_name/from_score
$execute unless score @s hide_coordinates matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Deleted ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true}," (previously at ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[0]","color":"aqua"}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[1]","color":"aqua"}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[2]","color":"aqua"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},")!"]
$execute if score @s hide_coordinates matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Deleted ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true}," (previously at ",[{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[0]","color":"aqua","obfuscated":true}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[1]"}," ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).xyzd[2]"}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},")!"]

# delete home and home name
$scoreboard players reset @s home_$(home)_x
$scoreboard players reset @s home_$(home)_y
$scoreboard players reset @s home_$(home)_z
$scoreboard players reset @s home_$(home)_d
$data remove storage pandamium.db:players selected.entry.data.homes.$(home)
function pandamium:utils/database/save

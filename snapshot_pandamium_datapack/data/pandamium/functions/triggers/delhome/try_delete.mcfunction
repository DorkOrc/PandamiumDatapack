# fail if home does not exist
$execute unless score @s home_$(home)_x = @s home_$(home)_x run return run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"text":"Home $(home)","color":"red","bold":true},{"text":" has not been set!","color":"red"}]

# get home name
function pandamium:utils/database/load_self
$data modify storage pandamium:temp home_name set value '{"text":"Home $(home)","bold":true}'
$execute if data storage pandamium.db:players selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value '["",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).name","interpret":true}]," (Home $(home))"]'

# ask to confirm delete
$execute if score <do_replace> variable matches 0 if score @s home_$(home)_x = @s home_$(home)_x run return run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," Are you sure you want to delete ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to delete ","color":"dark_green"},{"storage":"pandamium:temp","nbt":"home_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger delhome set -$(home)"}}]

# print success
$scoreboard players operation <dimension> variable = @s home_$(home)_d
function pandamium:utils/get/dimension_name/from_score
$execute unless score @s hide_coordinates matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Deleted ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true}," (previously at ",{"score":{"name":"@s","objective":"home_$(home)_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_$(home)_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_$(home)_z"},"color":"aqua"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},")!"]
$execute if score @s hide_coordinates matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Deleted ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true}," (previously at ",[{"score":{"name":"@s","objective":"home_$(home)_x"},"color":"aqua","obfuscated":true}," ",{"score":{"name":"@s","objective":"home_$(home)_y"}}," ",{"score":{"name":"@s","objective":"home_$(home)_z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"aqua"},")!"]

# delete home and home name
$scoreboard players reset @s home_$(home)_x
$scoreboard players reset @s home_$(home)_y
$scoreboard players reset @s home_$(home)_z
$scoreboard players reset @s home_$(home)_d
$data remove storage pandamium.db:players selected.entry.data.homes.$(home)
function pandamium:utils/database/save

function pandamium:utils/database/load_self

# fail if home does not exist
$execute store success score <home_exists> variable if data storage pandamium.db:players selected.entry.data.homes.$(home)
execute if score <home_exists> variable matches 0 run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"text":"Home $(home)","color":"red","bold":true},{"text":" has not been set!","color":"red"}]
execute if score <home_exists> variable matches 0 run return 0

# check for mainhand item name
item replace block 1 0 0 container.0 from entity @s weapon.mainhand
item replace block 1 0 0 container.1 with stone
execute unless data block 1 0 0 Items[0].tag.display.Name run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"text":" The item you are holding is not named! To rename a home, hold an item which has been renamed using an anvil.","color":"red"}]
execute unless data block 1 0 0 Items[0].tag.display.Name run return 0
data modify storage pandamium:temp text set from block 1 0 0 Items[0].tag.display.Name
execute unless score @s gameplay_perms matches 6.. run function pandamium:triggers/namehome/remove_formatting/main

# get home name
$data modify storage pandamium:temp home_name set value '{"text":"Home $(home)","bold":true}'
$execute if data storage pandamium.db:players selected.entry.data.homes.$(home).name run data modify storage pandamium:temp home_name set value '["",[{"text":"","color":"white","italic":true},{"storage":"pandamium.db:players","nbt":"selected.entry.data.homes.$(home).name","interpret":true}]," (Home $(home))"]'

# fail if name is the same
$execute store result score <different> variable run data modify block 1 0 0 Items[0].tag.display.Name set from storage pandamium.db:players selected.entry.data.homes.$(home).name
scoreboard players set <identical_home_name> variable 0
$execute if score <different> variable matches 0 if data storage pandamium.db:players selected.entry.data.homes.$(home).name store success score <identical_home_name> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},[{"text":" That home is already called ","color":"red"},[{"text":"","color":"white","italic":true},{"storage":"pandamium:temp","nbt":"text","interpret":true}],"!"]]
execute if score <identical_home_name> variable matches 1 run return 0

# ask to confirm rename
scoreboard players set <sent_confirmation_message> variable 0
$execute if score <do_rename> variable matches 0 if data storage pandamium.db:players selected.entry.data.homes.$(home).name store success score <sent_confirmation_message> variable run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," Are you sure you want to rename ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true},"? ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to rename ","color":"dark_green"},{"storage":"pandamium:temp","nbt":"home_name","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger namehome set -$(home)"}}]
execute if score <sent_confirmation_message> variable matches 1 run return 0

# print success
tellraw @s [{"text":"","color":"green"},{"text":"[Homes]","color":"dark_green"}," Renamed ",{"storage":"pandamium:temp","nbt":"home_name","interpret":true}," to ",[{"text":"","color":"white","italic":true},{"storage":"pandamium:temp","nbt":"text","interpret":true}],"!"]

# update home name
$data modify storage pandamium.db:players selected.entry.data.homes.$(home).name set from storage pandamium:temp text
function pandamium:utils/database/save

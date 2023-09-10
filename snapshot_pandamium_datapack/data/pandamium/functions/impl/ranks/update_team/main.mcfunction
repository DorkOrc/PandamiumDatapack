data modify storage pandamium:temp arguments set value {prefix:'"??? | "',separator:'""',custom_suffix:'""',status_suffix:'""',color:"gray"}
function pandamium:utils/database/players/load/self

data modify storage pandamium:temp arguments.username set from storage pandamium.db:players selected.entry.username

data modify storage pandamium:temp arguments.custom_suffix set from storage pandamium.db:players selected.entry.data.custom_suffix
execute unless data storage pandamium:temp arguments{custom_suffix:'""'} run data modify storage pandamium:temp arguments.separator set value '" "'

execute unless score @s hidden matches 1.. if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run data modify storage pandamium:temp arguments.status_suffix set value '{"text":" [Idle]","color":"gray"}'
execute unless score @s hidden matches 1.. if score @s idle.time matches 1073741824.. run data modify storage pandamium:temp arguments.status_suffix set value '{"text":" [AFK]","color":"gray"}'

scoreboard players set <got_rank> variable 0
execute if score @s donator_rank matches 1 unless score @s disable_donator_prefix matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_purple",prefix:'{"text":"Donator | ","color":"gray"}'}
execute if score @s vip_rank matches 1 store success score <got_rank> variable run data modify storage pandamium:temp arguments merge value {color:"dark_blue",prefix:'{"text":"VIP | ","color":"gray"}'}
execute if score @s staff_rank matches 1.. unless score @s is_staff_alt matches 1.. run function pandamium:impl/ranks/update_team/get_staff_rank
execute if score <got_rank> variable matches 0 run function pandamium:impl/ranks/update_team/get_gameplay_rank

function pandamium:impl/ranks/update_team/apply_changes with storage pandamium:temp arguments

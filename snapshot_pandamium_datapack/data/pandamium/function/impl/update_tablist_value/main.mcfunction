scoreboard players set @s tablist_value -1

execute if score @s hide_tablist_value matches 1 unless score @s idle.time matches 1.. run return run scoreboard players display numberformat @s tablist_value blank

data modify storage pandamium:local functions."pandamium:impl/update_tablist_value/main" set value {value: "", separator: '""', status: '""'}

execute unless score @s hidden matches 1.. if score @s idle.time matches 1.. run function pandamium:utils/database/players/load/self
execute unless score @s hidden matches 1.. if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run data modify storage pandamium:local functions."pandamium:impl/update_tablist_value/main".status set value '{"text":"[Idle]","color":"gray"}'
execute unless score @s hidden matches 1.. if score @s idle.time matches 1073741824.. run data modify storage pandamium:local functions."pandamium:impl/update_tablist_value/main".status set value '{"text":"[AFK]","color":"gray"}'

execute unless score @s hide_tablist_value matches 1 store result storage pandamium:local functions."pandamium:impl/update_tablist_value/main".value int 1 run scoreboard players get @s votes
execute unless score @s hide_tablist_value matches 1 run data modify storage pandamium:local functions."pandamium:impl/update_tablist_value/main".separator set value '" "'

function pandamium:impl/update_tablist_value/update_numberformat with storage pandamium:local functions."pandamium:impl/update_tablist_value/main"

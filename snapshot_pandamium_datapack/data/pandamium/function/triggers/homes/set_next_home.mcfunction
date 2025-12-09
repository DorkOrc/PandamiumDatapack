function pandamium:utils/database/players/load/self

execute if score @s available_homes matches 1.. unless data storage pandamium.db.players:io selected.entry.data.homes.1 run return run scoreboard players set @s sethome 1
execute if score @s available_homes matches 2.. unless data storage pandamium.db.players:io selected.entry.data.homes.2 run return run scoreboard players set @s sethome 2
execute if score @s available_homes matches 3.. unless data storage pandamium.db.players:io selected.entry.data.homes.3 run return run scoreboard players set @s sethome 3
execute if score @s available_homes matches 4.. unless data storage pandamium.db.players:io selected.entry.data.homes.4 run return run scoreboard players set @s sethome 4
execute if score @s available_homes matches 5.. unless data storage pandamium.db.players:io selected.entry.data.homes.5 run return run scoreboard players set @s sethome 5
execute if score @s available_homes matches 6.. unless data storage pandamium.db.players:io selected.entry.data.homes.6 run return run scoreboard players set @s sethome 6
execute if score @s available_homes matches 7.. unless data storage pandamium.db.players:io selected.entry.data.homes.7 run return run scoreboard players set @s sethome 7
execute if score @s available_homes matches 8.. unless data storage pandamium.db.players:io selected.entry.data.homes.8 run return run scoreboard players set @s sethome 8
execute if score @s available_homes matches 9.. unless data storage pandamium.db.players:io selected.entry.data.homes.9 run return run scoreboard players set @s sethome 9
execute if score @s available_homes matches 10.. unless data storage pandamium.db.players:io selected.entry.data.homes.10 run return run scoreboard players set @s sethome 10
execute if score @s available_homes matches 11.. unless data storage pandamium.db.players:io selected.entry.data.homes.11 run return run scoreboard players set @s sethome 11
execute if score @s available_homes matches 12.. unless data storage pandamium.db.players:io selected.entry.data.homes.12 run return run scoreboard players set @s sethome 12
execute if score @s available_homes matches 13.. unless data storage pandamium.db.players:io selected.entry.data.homes.13 run return run scoreboard players set @s sethome 13
execute if score @s available_homes matches 14.. unless data storage pandamium.db.players:io selected.entry.data.homes.14 run return run scoreboard players set @s sethome 14
execute if score @s available_homes matches 15.. unless data storage pandamium.db.players:io selected.entry.data.homes.15 run return run scoreboard players set @s sethome 15
execute if score @s available_homes matches 16.. unless data storage pandamium.db.players:io selected.entry.data.homes.16 run return run scoreboard players set @s sethome 16
execute if score @s available_homes matches 17.. unless data storage pandamium.db.players:io selected.entry.data.homes.17 run return run scoreboard players set @s sethome 17
execute if score @s available_homes matches 18.. unless data storage pandamium.db.players:io selected.entry.data.homes.18 run return run scoreboard players set @s sethome 18
execute if score @s available_homes matches 19.. unless data storage pandamium.db.players:io selected.entry.data.homes.19 run return run scoreboard players set @s sethome 19
execute if score @s available_homes matches 20.. unless data storage pandamium.db.players:io selected.entry.data.homes.20 run return run scoreboard players set @s sethome 20
execute if score @s available_homes matches 21.. unless data storage pandamium.db.players:io selected.entry.data.homes.21 run return run scoreboard players set @s sethome 21
execute if score @s available_homes matches 22.. unless data storage pandamium.db.players:io selected.entry.data.homes.22 run return run scoreboard players set @s sethome 22
execute if score @s available_homes matches 23.. unless data storage pandamium.db.players:io selected.entry.data.homes.23 run return run scoreboard players set @s sethome 23
execute if score @s available_homes matches 24.. unless data storage pandamium.db.players:io selected.entry.data.homes.24 run return run scoreboard players set @s sethome 24
execute if score @s available_homes matches 25.. unless data storage pandamium.db.players:io selected.entry.data.homes.25 run return run scoreboard players set @s sethome 25

tellraw @s [{color:"dark_red",text:"[Homes]"},{color:"red",text:" You have no free home slots!"}]
scoreboard players reset @s homes

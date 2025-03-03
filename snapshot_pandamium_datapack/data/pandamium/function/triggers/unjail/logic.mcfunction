execute unless score @s staff_perms matches 1.. run return run tellraw @s [{text:"[Unjail]",color:"dark_red"},{text:" You do not have permission to use this trigger!",color:"red"}]
execute if score @s jailed matches 1.. unless score @s staff_perms matches 3.. run return run tellraw @s [{text:"[Unjail]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]

# menus
execute if score @s unjail matches 1 run return run function pandamium:triggers/unjail/print_menu/main
execute if score @s unjail matches 1000001 run return run function pandamium:triggers/unjail/search_players

# restrictions
execute unless score @s unjail matches 2..999999 run return run tellraw @s [{text:"[Unjail]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# select player
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s unjail
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{text:"[Unjail]",color:"dark_red"},{text:" Could not find a player with ID ",color:"red",extra:[{score:{name:"@s",objective:"unjail"}},{text:"!"}]}]

data modify storage pandamium:templates macro.username.username set from storage pandamium.db.players:io selected.entry.username
function pandamium:triggers/unjail/with_username with storage pandamium:templates macro.username

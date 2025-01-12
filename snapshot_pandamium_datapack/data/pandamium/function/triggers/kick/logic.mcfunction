execute unless score @s staff_perms matches 2.. run tellraw @s [{text:"[Kick]",color:"dark_red"},{text:" You do not have permission to use this trigger!",color:"red"}]
execute unless score @s staff_perms matches 2.. run return 0

# print menu
execute if score @s kick matches 1 run function pandamium:triggers/kick/print_menu/main
execute if score @s kick matches 1 run return 0

# quick-kick
execute if score @s kick matches -1 run scoreboard players operation @s kick = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s kick matches -1 run tellraw @s [{text:"[Kick]",color:"dark_red"},{text:" Could not find a non-staff player nearby!",color:"red"}]
execute if score @s kick matches -1 run return 0

# restrictions
execute if score @s kick matches ..-2 run tellraw @s [{text:"[Kick]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score @s kick matches ..-2 run return 0

# select player
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s kick
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id
execute unless data storage pandamium.db.players:io selected run tellraw @s [{text:"[Kick]",color:"dark_red"},{text:" Could not find a player with ID ",color:"red",extra:[{score:{name:"@s",objective:"kick"}},{text:"!"}]}]
execute unless data storage pandamium.db.players:io selected run return 0

data modify storage pandamium:templates macro.username.username set from storage pandamium.db.players:io selected.entry.username
function pandamium:triggers/kick/with_username with storage pandamium:templates macro.username

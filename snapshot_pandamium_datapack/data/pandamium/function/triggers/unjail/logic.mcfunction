execute unless score @s staff_perms matches 1.. run return run tellraw @s [{text:"[Unjail]",color:"dark_red"},{text:" You do not have permission to use this trigger!",color:"red"}]
execute if score @s jailed matches 1.. unless score @s staff_perms matches 3.. run return run tellraw @s [{text:"[Unjail]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]

# menus
execute if score @s unjail matches 1 run return run function pandamium:triggers/unjail/print_menu/main
execute if score @s unjail matches 1000001 run return run function pandamium:triggers/unjail/search_players

# restrictions
execute unless score @s unjail matches 2..999999 run return run tellraw @s [{text:"[Unjail]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# select player
execute store result storage pandamium:local functions."pandamium:triggers/unjail/*".id int 1 run scoreboard players get @s unjail
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:triggers/unjail/*"
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{color:"dark_red",text:"[Unjail]"},[{color:"red",text:" Could not find a player with ID "},{score:{name:"@s",objective:"unjail"}},"!"]]

function pandamium:utils/get/display_name/from_id with storage pandamium:local functions."pandamium:triggers/unjail/*"
data modify storage pandamium:local functions."pandamium:triggers/unjail/*".target_display_name set from storage pandamium:temp display_name

execute store result score <jailed> variable run function pandamium:triggers/unjail/is_player_already_jailed with storage pandamium.db.players:io selected.entry
execute unless score <jailed> variable matches 1.. run return run tellraw @s [{color:"dark_red",text:"[Unjail]"},[{color:"red",text:" "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/unjail/*".target_display_name',interpret:true}," is not jailed!"]]

data modify storage pandamium:local functions."pandamium:triggers/unjail/*".args.target set from storage pandamium:local functions."pandamium:triggers/unjail/*".id
execute store result storage pandamium:local functions."pandamium:triggers/unjail/*".args.source int 1 run scoreboard players get @s id
execute store success storage pandamium:local functions."pandamium:triggers/unjail/*".args.announce byte 1 if predicate pandamium:player/announces_punishments

execute store success score <successful_unjail> variable run function pandamium:player/punishment/unjail with storage pandamium:local functions."pandamium:triggers/unjail/*"
execute if score <successful_unjail> variable matches 1 run return run tellraw @s [{color:"dark_green",text:"[Unjail]"},[{color:"green",text:" Unjailed "},[{color:"aqua",text:""},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/unjail/*".target_display_name',interpret:true}],"!"]]

tellraw @s [{color:"dark_red",text:"[Unjail]"},{color:"red",text:" Something went wrong!"}]

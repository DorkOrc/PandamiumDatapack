execute unless score @s staff_perms matches 2.. run return run tellraw @s [{color:"dark_red",text:"[Ban]"},{color:"red",text:" You do not have permission to use this trigger!"}]

# print menu
execute if score @s ban matches 1 run return run function pandamium:triggers/ban/print_menu/main

# quick-ban
execute if score @s ban matches -1 run scoreboard players operation @s ban = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s ban matches -1 run return run tellraw @s [{color:"dark_red",text:"[Ban]"},{color:"red",text:" Could not find a non-staff player nearby!"}]

# confirmation
execute store success score <confirm_ban> variable if score @s ban matches ..-2
execute if score @s ban matches ..-2 run scoreboard players operation @s ban *= #-1 constant

# select player
execute store result storage pandamium:local functions."pandamium:triggers/ban/*".id int 1 store result score <id> variable run scoreboard players get @s ban
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:triggers/ban/*"
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{color:"dark_red",text:"[Ban]"},[{color:"red",text:" Could not find a player with ID "},{score:{name:"@s",objective:"ban"}},"!"]]

function pandamium:utils/get/display_name/from_id with storage pandamium:local functions."pandamium:triggers/ban/*"
data modify storage pandamium:local functions."pandamium:triggers/ban/*".target_display_name set from storage pandamium:temp display_name

execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run tellraw @s [{color:"dark_red",text:"[Ban]"},[{color:"red",text:" "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/ban/*".target_display_name',interpret:true}," is not online! Alert a senior moderator, admin, or owner to have this player banned."]]

execute if score @a[predicate=pandamium:matches_id,limit=1] staff_perms >= @s staff_perms run return run tellraw @s [{color:"dark_red",text:"[Ban]"},[{color:"red",text:" You may not ban "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/ban/*".target_display_name',interpret:true},"!"]]

execute if score <confirm_ban> variable matches 0 run return run function pandamium:triggers/ban/confirmation_message with storage pandamium:local functions."pandamium:triggers/ban/*"

data modify storage pandamium:local functions."pandamium:triggers/ban/*".args.target set from storage pandamium:local functions."pandamium:triggers/ban/*".id
execute store result storage pandamium:local functions."pandamium:triggers/ban/*".args.source int 1 run scoreboard players get @s id
execute store success storage pandamium:local functions."pandamium:triggers/ban/*".args.announce byte 1 unless score @s silent_punishments matches 1..

execute store success score <successful_ban> variable run function pandamium:player/punishment/ban with storage pandamium:local functions."pandamium:triggers/ban/*"
execute if score <successful_ban> variable matches 1 run return run tellraw @s [{color:"dark_green",text:"[Ban]"},[{color:"green",text:" Banned "},[{color:"aqua",text:""},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/ban/*".target_display_name',interpret:true}],"!"]]

tellraw @s [{color:"dark_red",text:"[Ban]"},{color:"red",text:" Something went wrong!"}]

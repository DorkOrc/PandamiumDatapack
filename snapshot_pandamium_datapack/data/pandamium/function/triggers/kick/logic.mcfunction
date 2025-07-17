execute unless score @s staff_perms matches 2.. run return run tellraw @s [{text:"[Kick]",color:"dark_red"},{text:" You do not have permission to use this trigger!",color:"red"}]

# print menu
execute if score @s kick matches 1 run return run function pandamium:triggers/kick/print_menu/main

# quick-kick
execute if score @s kick matches -1 run scoreboard players operation @s kick = @a[scores={staff_perms=0},distance=..200,limit=1] id
execute if score @s kick matches -1 run return run tellraw @s [{text:"[Kick]",color:"dark_red"},{text:" Could not find a non-staff player nearby!",color:"red"}]

# restrictions
execute if score @s kick matches ..-2 run return run tellraw @s [{text:"[Kick]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# select player
execute store result storage pandamium:local functions."pandamium:triggers/kick/*".id int 1 store result score <id> variable run scoreboard players get @s kick
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:triggers/kick/*"
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{color:"dark_red",text:"[Kick]"},[{color:"red",text:" Could not find a player with ID "},{score:{name:"@s",objective:"kick"}},"!"]]

function pandamium:utils/get/display_name/from_id with storage pandamium:local functions."pandamium:triggers/kick/*"
data modify storage pandamium:local functions."pandamium:triggers/kick/*".target_display_name set from storage pandamium:temp display_name

execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run tellraw @s [{color:"dark_red",text:"[Kick]"},[{color:"red",text:" "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/kick/*".target_display_name',interpret:true}," is already offline!"]]

data modify storage pandamium:local functions."pandamium:triggers/kick/*".args.target set from storage pandamium:local functions."pandamium:triggers/kick/*".id
execute store result storage pandamium:local functions."pandamium:triggers/kick/*".args.source int 1 run scoreboard players get @s id
execute store success storage pandamium:local functions."pandamium:triggers/kick/*".args.announce byte 1 if predicate pandamium:player/announces_punishments

execute store success score <successful_kick> variable run function pandamium:player/punishment/kick with storage pandamium:local functions."pandamium:triggers/kick/*"
execute if score <successful_kick> variable matches 1 run return run tellraw @s [{color:"dark_green",text:"[Kick]"},[{color:"green",text:" Kicked "},[{color:"aqua",text:""},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/kick/*".target_display_name',interpret:true}],"!"]]

tellraw @s [{color:"dark_red",text:"[Kick]"},{color:"red",text:" Something went wrong!"}]

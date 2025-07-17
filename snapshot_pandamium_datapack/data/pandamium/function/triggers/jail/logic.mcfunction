execute unless score @s staff_perms matches 1.. run return run tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" You do not have permission to use this trigger!"}]

# menus
execute if score @s jail matches 1 run return run function pandamium:triggers/jail/print_menu/main
execute if score @s jail matches 1000001 run return run function pandamium:triggers/jail/search_players

# quick-jail
execute if score @s jail matches -1 run scoreboard players operation @s jail = @p[scores={staff_perms=0},distance=..200] id
execute if score @s jail matches -1 run return run tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" Could not find a non-staff player nearby!"}]

# restrictions
execute unless score @s jail matches 2..999999 run return run tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" That is not a valid option!"}]

execute if score @s jail = @s id unless score @s staff_perms matches 3.. store result score <random> variable run random value 0..3
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 0 run return run tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" Why are you trying to jail yourself?"}]
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 1 run return run tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" Maybe don't do that..."}]
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 2 run return run tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" Hmm..."}]
execute if score @s jail = @s id unless score @s staff_perms matches 3.. if score <random> variable matches 3 run return run tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" You deserve freedom!"}]

# select player
execute store result storage pandamium:local functions."pandamium:triggers/jail/*".id int 1 run scoreboard players get @s jail
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:triggers/jail/*"
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{color:"dark_red",text:"[Jail]"},[{color:"red",text:" Could not find a player with ID "},{score:{name:"@s",objective:"jail"}},"!"]]

function pandamium:utils/get/display_name/from_id with storage pandamium:local functions."pandamium:triggers/jail/*"
data modify storage pandamium:local functions."pandamium:triggers/jail/*".target_display_name set from storage pandamium:temp display_name

execute store result score <jailed> variable run function pandamium:triggers/jail/is_player_already_jailed with storage pandamium.db.players:io selected.entry
execute if score <jailed> variable matches 1.. run return run tellraw @s [{color:"dark_red",text:"[Jail]"},[{color:"red",text:" "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/jail/*".target_display_name',interpret:true}," is already jailed!"]]

data modify storage pandamium:local functions."pandamium:triggers/jail/*".args.target set from storage pandamium:local functions."pandamium:triggers/jail/*".id
execute store result storage pandamium:local functions."pandamium:triggers/jail/*".args.source int 1 run scoreboard players get @s id
execute store success storage pandamium:local functions."pandamium:triggers/jail/*".args.announce byte 1 if predicate pandamium:player/announces_punishments

execute store success score <successful_jail> variable run function pandamium:player/punishment/jail with storage pandamium:local functions."pandamium:triggers/jail/*"
execute if score <successful_jail> variable matches 1 run return run tellraw @s [{color:"dark_green",text:"[Jail]"},[{color:"green",text:" Jailed "},[{color:"aqua",text:""},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/jail/*".target_display_name',interpret:true}],"! Any items they have on them will be moved to the Staff World."]]

tellraw @s [{color:"dark_red",text:"[Jail]"},{color:"red",text:" Something went wrong!"}]

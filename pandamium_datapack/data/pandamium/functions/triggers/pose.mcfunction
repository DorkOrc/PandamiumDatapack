execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message

tag @s add running_trigger

# Menu
execute if score @s gameplay_perms matches 6.. if score @s pose matches 1.. run function pandamium:misc/pose/menu

# Check if can run
scoreboard players set <can_run> variable 1
execute unless score @s gameplay_perms matches 6.. run scoreboard players set <can_run> variable 0
execute if score @s pose matches 1.. run scoreboard players set <can_run> variable 0
execute if entity @s[gamemode=spectator] run scoreboard players set <can_run> variable 0
execute if score @s in_spawn matches 1 run scoreboard players set <can_run> variable 0
execute at @s store success score <armour_stand_exists> variable if entity @e[type=armor_stand,distance=..6,limit=1,tag=!pose.locked]
execute if score <armour_stand_exists> variable matches 0 run scoreboard players set <can_run> variable 0

# Target new
scoreboard players operation <pose> variable = @s pose
execute if score <can_run> variable matches 1 if score @s pose matches ..-1 as @e[type=armor_stand,sort=nearest,distance=..6,limit=1,tag=!pose.locked] at @s run function pandamium:misc/pose/target_new

# Display success
execute if score <can_run> variable matches 1 if score @s pose matches -71 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Arms","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -72 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Base Plate","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -73 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Gravity","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -74 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Small","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -75 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Name Visibility","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -76 if score <can_toggle_invisible> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Can only make armour stands invisible if they have items on them!","color":"red"}]
execute if score <can_run> variable matches 1 if score @s pose matches -76 if score <can_toggle_invisible> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Invisible","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score <do_pose> variable matches 1 if score <has_edited> variable matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Changed","color":"aqua"},{"text":" Pose!","color":"green"}]
execute if score <can_run> variable matches 1 if score <do_pose> variable matches 1 if score <has_edited> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
execute if score <can_run> variable matches 1 if score @s pose matches -64 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Mirrored ","color":"aqua"},{"text":"Pose!","color":"green"}]
execute if score <can_run> variable matches 1 if score @s pose matches -129 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Locked ","color":"aqua"},{"text":"Pose!","color":"green"}]
execute if score <can_run> variable matches 1 if score @s pose matches -130 if score <has_edited> variable matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Reset ","color":"aqua"},{"text":"Pose!","color":"green"}]
execute if score <can_run> variable matches 1 if score @s pose matches -130 if score <has_edited> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

# Display an error message
execute if score @s pose matches ..-1 run scoreboard players set <displayed_error> variable 0
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s in_spawn matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <armour_stand_exists> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Could not find an armour stand nearby to edit!","color":"red"}]

tag @s remove running_trigger
scoreboard players reset @s pose
scoreboard players enable @s pose

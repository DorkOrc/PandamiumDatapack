execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message

tag @s add running_trigger

# Menu
execute if score @s gameplay_perms matches 6.. if score @s pose matches 1.. run function pandamium:misc/pose/menu

# Check if can run
scoreboard players set <can_run> temp 1
execute unless score @s gameplay_perms matches 6.. run scoreboard players set <can_run> temp 0
execute if score @s pose matches 1.. run scoreboard players set <can_run> temp 0
execute if score @s in_spawn matches 1 run scoreboard players set <can_run> temp 0
execute at @s store success score <armour_stand_exists> temp if entity @e[type=armor_stand,distance=..6,tag=!pose.locked]
execute if score <armour_stand_exists> temp matches 0 run scoreboard players set <can_run> temp 0

# Target new
execute if score <can_run> temp matches 1 if score @s pose matches ..-1 at @s run tag @e[type=armor_stand,sort=nearest,distance=..6,limit=1,tag=!pose.locked] add pose.selected
execute if score <can_run> temp matches 1 if score @s pose matches ..-1 at @e[type=armor_stand,tag=pose.selected,limit=1] run particle wax_off ~ ~1 ~ 0.2 0.4 0.2 0.2 10
execute if score <can_run> temp matches 1 if score @s pose matches ..-1 run data modify storage pandamium:pose NBT set from entity @e[type=armor_stand,tag=pose.selected,limit=1]

execute if score <can_run> temp matches 1 if score @s pose matches ..-1 run scoreboard players operation <pose> temp = @s pose
execute if score <can_run> temp matches 1 if score @s pose matches ..-1 as @e[type=armor_stand,tag=pose.selected,limit=1] at @s run function pandamium:misc/pose/do_edit
execute if score <can_run> temp matches 1 if score @s pose matches ..-1 run tag @e[type=armor_stand,tag=pose.selected] remove pose.selected

# Display success
execute if score <can_run> temp matches 1 if score @s pose matches -71 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Arms","color":"aqua"},"!"]
execute if score <can_run> temp matches 1 if score @s pose matches -72 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Base Plate","color":"aqua"},"!"]
execute if score <can_run> temp matches 1 if score @s pose matches -73 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Gravity","color":"aqua"},"!"]
execute if score <can_run> temp matches 1 if score @s pose matches -74 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Small","color":"aqua"},"!"]
execute if score <can_run> temp matches 1 if score @s pose matches -75 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Name Visibility","color":"aqua"},"!"]
execute if score <can_run> temp matches 1 if score <do_pose> temp matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Changed","color":"aqua"},{"text":" Pose!","color":"green"}]
execute if score <can_run> temp matches 1 if score @s pose matches -64 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Mirrored ","color":"aqua"},{"text":"Pose!","color":"green"}]
execute if score <can_run> temp matches 1 if score @s pose matches -129 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Locked ","color":"aqua"},{"text":"Pose!","color":"green"}]
execute if score <can_run> temp matches 1 if score @s pose matches -130 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Reset ","color":"aqua"},{"text":"Pose!","color":"green"}]

# Display an error message
execute if score @s pose matches ..-1 run scoreboard players set <displayed_error> temp 0
execute if score @s pose matches ..-1 if score <can_run> temp matches 0 unless score <displayed_error> temp matches 1 store success score <displayed_error> temp if score @s in_spawn matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score @s pose matches ..-1 if score <can_run> temp matches 0 unless score <displayed_error> temp matches 1 store success score <displayed_error> temp if score <armour_stand_exists> temp matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Could not find an armour stand nearby to edit!","color":"red"}]

#
tag @s remove running_trigger
scoreboard players reset @s pose
scoreboard players enable @s pose

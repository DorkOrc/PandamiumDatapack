execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

#Menu
execute if score @s gameplay_perms matches 5.. if score @s pose matches 1.. run function pandamium:misc/pose/menu

#Check if can run
scoreboard players set <can_run> variable 1
execute unless score @s gameplay_perms matches 5.. run scoreboard players set <can_run> variable 0
execute if score @s pose matches 1.. run scoreboard players set <can_run> variable 0
scoreboard players set <at_spawn> variable 0
execute if entity @s[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run scoreboard players set <at_spawn> variable 1
execute in the_nether if entity @s[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] run scoreboard players set <at_spawn> variable 1
execute if score <at_spawn> variable matches 1 run scoreboard players set <can_run> variable 0
execute at @s store success score <armour_stand_exists> variable if entity @e[type=armor_stand,distance=..6,tag=!pose.locked]
execute if score <armour_stand_exists> variable matches 0 run scoreboard players set <can_run> variable 0

#Target new
execute if score <can_run> variable matches 1 if score @s pose matches ..-1 at @s run tag @e[type=armor_stand,sort=nearest,distance=..6,limit=1,tag=!pose.locked] add selected_armor_stand
execute if score <can_run> variable matches 1 if score @s pose matches ..-1 run effect clear @e[type=armor_stand,distance=..6] glowing
execute if score <can_run> variable matches 1 if score @s pose matches ..-1 run effect give @e[type=armor_stand,tag=selected_armor_stand,limit=1] glowing 5
execute if score <can_run> variable matches 1 if score @s pose matches ..-1 run data modify storage pandamium:pose NBT set from entity @e[type=armor_stand,tag=selected_armor_stand,limit=1]

#Toggle NBT tags
execute if score <can_run> variable matches 1 run scoreboard players set <do_toggle> variable 0
execute if score <can_run> variable matches 1 if score @s pose matches -5..-1 run scoreboard players set <do_toggle> variable 1
execute if score <can_run> variable matches 1 if score @s pose matches -1 store result score <toggle_state> variable run data get storage pandamium:pose NBT.ShowArms
execute if score <can_run> variable matches 1 if score @s pose matches -2 store result score <toggle_state> variable run data get storage pandamium:pose NBT.NoBasePlate
execute if score <can_run> variable matches 1 if score @s pose matches -3 store result score <toggle_state> variable run data get storage pandamium:pose NBT.NoGravity
execute if score <can_run> variable matches 1 if score @s pose matches -4 store result score <toggle_state> variable run data get storage pandamium:pose NBT.Small
execute if score <can_run> variable matches 1 if score @s pose matches -5 store result score <toggle_state> variable run data get storage pandamium:pose NBT.CustomNameVisible
execute if score <can_run> variable matches 1 if score <do_toggle> variable matches 1 run scoreboard players add <toggle_state> variable 1
execute if score <can_run> variable matches 1 if score <do_toggle> variable matches 1 if score <toggle_state> variable matches 2.. run scoreboard players set <toggle_state> variable 0
execute if score <can_run> variable matches 1 if score @s pose matches -1 store result entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] ShowArms byte 1 run scoreboard players get <toggle_state> variable
execute if score <can_run> variable matches 1 if score @s pose matches -2 store result entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] NoBasePlate byte 1 run scoreboard players get <toggle_state> variable
execute if score <can_run> variable matches 1 if score @s pose matches -3 store result entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] NoGravity byte 1 run scoreboard players get <toggle_state> variable
execute if score <can_run> variable matches 1 if score @s pose matches -4 store result entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] Small byte 1 run scoreboard players get <toggle_state> variable
execute if score <can_run> variable matches 1 if score @s pose matches -5 store result entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] CustomNameVisible byte 1 run scoreboard players get <toggle_state> variable
execute if score <can_run> variable matches 1 if score <do_toggle> variable matches 1 at @e[type=armor_stand,tag=selected_armor_stand,limit=1] run playsound entity.armor_stand.hit player @s ~ ~ ~ 0.5 2

#Pose
execute if score <can_run> variable matches 1 run scoreboard players set <do_pose> variable 0
execute if score <can_run> variable matches 1 if score @s pose matches -35..-6 run scoreboard players set <do_pose> variable 1
execute if score <can_run> variable matches 1 if score @s pose matches -50 run scoreboard players set <do_pose> variable 1
execute if score <can_run> variable matches 1 if score <do_pose> variable matches 1 run scoreboard players operation <pose> variable = @s pose
execute if score <can_run> variable matches 1 if score <do_pose> variable matches 1 as @e[type=armor_stand,tag=selected_armor_stand,limit=1] run function pandamium:misc/pose/do_pose
execute if score <can_run> variable matches 1 if score <do_pose> variable matches 1 at @e[type=armor_stand,tag=selected_armor_stand,limit=1] run playsound entity.armor_stand.hit player @s ~ ~ ~ 0.5 2

#Mirror
execute if score <can_run> variable matches 1 if score @s pose matches -36 as @e[type=armor_stand,tag=selected_armor_stand,limit=1] run function pandamium:misc/pose/mirror
execute if score <can_run> variable matches 1 if score @s pose matches -36 at @e[type=armor_stand,tag=selected_armor_stand,limit=1] run playsound entity.armor_stand.hit player @s ~ ~ ~ 0.5 2

#Slot Items
execute if score <can_run> variable matches 1 if score @s pose matches -38..-37 run scoreboard players set <toggle_state> variable 0
execute if score <can_run> variable matches 1 if score @s pose matches -38..-37 store success score <selected_item> variable if data entity @s SelectedItem.id
execute if score <can_run> variable matches 1 if score @s pose matches -37 if score <selected_item> variable matches 1 unless data storage pandamium:pose NBT.ArmorItems[3].id run scoreboard players set <toggle_state> variable 1
execute if score <can_run> variable matches 1 if score @s pose matches -38 if score <selected_item> variable matches 1 unless data storage pandamium:pose NBT.HandItems[1].id run scoreboard players set <toggle_state> variable 1
execute if score <can_run> variable matches 1 if score @s pose matches -37 if score <toggle_state> variable matches 1 run data modify entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] ArmorItems[3] set from entity @s SelectedItem
execute if score <can_run> variable matches 1 if score @s pose matches -38 if score <toggle_state> variable matches 1 run data modify entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] HandItems[1] set from entity @s SelectedItem
execute if score <can_run> variable matches 1 if score @s pose matches -38..-37 if score <toggle_state> variable matches 1 run item entity @s weapon.mainhand replace air
execute if score <can_run> variable matches 1 if score @s pose matches -38..-37 if score <toggle_state> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Could not put an item into this slot!","color":"red"}]
execute if score <can_run> variable matches 1 if score @s pose matches -37 if score <toggle_state> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped ",{"text":"Head","color":"aqua"}," slot!"]
execute if score <can_run> variable matches 1 if score @s pose matches -38 if score <toggle_state> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped ",{"text":"Offhand","color":"aqua"}," slot!"]
execute if score <can_run> variable matches 1 if score @s pose matches -38..-37 at @e[type=armor_stand,tag=selected_armor_stand,limit=1] run playsound item.armor.equip_generic player @s ~ ~ ~ 0.5 2

#Lock Armour Stand
execute if score <can_run> variable matches 1 if score @s pose matches -128 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Are you sure you want to lock the Pose of this armour stand? ","color":"red"},{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to Lock the Pose of the Nearest Armour Stand","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger pose set -129"}}]
execute if score <can_run> variable matches 1 if score @s pose matches -129 at @e[type=armor_stand,tag=selected_armor_stand,limit=1] run particle witch ~ ~0.8 ~ 0.1 0.5 0.1 0 10
execute if score <can_run> variable matches 1 if score @s pose matches -129 at @e[type=armor_stand,tag=selected_armor_stand,limit=1] run playsound block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score <can_run> variable matches 1 if score @s pose matches -129 run tag @e[type=armor_stand,tag=selected_armor_stand,limit=1] add pose.locked

#Reset Armour Stand
execute if score <can_run> variable matches 1 if score @s pose matches -130 run data remove entity @e[type=armor_stand,tag=selected_armor_stand,limit=1] Pose
execute if score <can_run> variable matches 1 if score @s pose matches -130 at @e[type=armor_stand,tag=selected_armor_stand,limit=1] run playsound entity.armor_stand.hit player @s ~ ~ ~ 0.5 2

#success
execute if score <can_run> variable matches 1 if score @s pose matches -1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"ShowArms","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -2 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"NoBasePlate","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -3 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"NoGravity","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -4 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Small","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score @s pose matches -5 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"CustomNameVisible","color":"aqua"},"!"]
execute if score <can_run> variable matches 1 if score <do_pose> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," ",{"text":"Changed","color":"aqua"}," Pose!"]
execute if score <can_run> variable matches 1 if score @s pose matches -36 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," ",{"text":"Mirrored","color":"aqua"}," Pose","!"]
execute if score <can_run> variable matches 1 if score @s pose matches -129 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," ",{"text":"Locked","color":"aqua"}," Pose","!"]
execute if score <can_run> variable matches 1 if score @s pose matches -130 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," ",{"text":"Reset","color":"aqua"}," Pose","!"]

#error
execute if score @s pose matches ..-1 run scoreboard players set <displayed_error> variable 0
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <at_spawn> variable matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <armour_stand_exists> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Could not find an armour stand nearby to edit!","color":"red"}]

tag @e[type=armor_stand,tag=selected_armor_stand] remove selected_armor_stand

scoreboard players reset @s pose
scoreboard players enable @s pose

# Toggle NBT tags
execute if score <pose> variable matches -1 store success entity @s ShowArms byte 1 unless data storage pandamium:pose {NBT:{ShowArms:1b}}
execute if score <pose> variable matches -2 store success entity @s NoBasePlate byte 1 unless data storage pandamium:pose {NBT:{NoBasePlate:1b}}
execute if score <pose> variable matches -3 store success entity @s NoGravity byte 1 unless data storage pandamium:pose {NBT:{NoGravity:1b}}
execute if score <pose> variable matches -4 store success entity @s Small byte 1 unless data storage pandamium:pose {NBT:{Small:1b}}
execute if score <pose> variable matches -5 store success entity @s CustomNameVisible byte 1 unless data storage pandamium:pose {NBT:{CustomNameVisible:1b}}
execute if score <pose> variable matches -5..-1 run playsound entity.armor_stand.hit player @p[tag=running_trigger] ~ ~ ~ 0.5 2

# Pose
execute store success score <do_pose> variable if score <pose> variable matches -132..-6
execute if score <pose> variable matches -50 run scoreboard players set <do_pose> variable 1
execute if score <do_pose> variable matches 1 run function pandamium:misc/pose/do_pose
execute if score <do_pose> variable matches 1 run playsound entity.armor_stand.hit player @p[tag=running_trigger] ~ ~ ~ 0.5 2

# Mirror
execute if score <pose> variable matches -36 run function pandamium:misc/pose/mirror
execute if score <pose> variable matches -36 run playsound entity.armor_stand.hit player @p[tag=running_trigger] ~ ~ ~ 0.5 2

# Slot Items
execute if score <pose> variable matches -38..-37 run scoreboard players set <toggle_state> variable 0
execute if score <pose> variable matches -38..-37 store success score <selected_item> variable if data entity @p[tag=running_trigger] SelectedItem.id
execute if score <pose> variable matches -37 if score <selected_item> variable matches 1 unless data storage pandamium:pose NBT.ArmorItems[3].id run scoreboard players set <toggle_state> variable 1
execute if score <pose> variable matches -38 if score <selected_item> variable matches 1 unless data storage pandamium:pose NBT.HandItems[1].id run scoreboard players set <toggle_state> variable 1
execute if score <pose> variable matches -37 if score <toggle_state> variable matches 1 run data modify entity @s ArmorItems[3] set from entity @p[tag=running_trigger] SelectedItem
execute if score <pose> variable matches -38 if score <toggle_state> variable matches 1 run data modify entity @s HandItems[1] set from entity @p[tag=running_trigger] SelectedItem
execute if score <pose> variable matches -38..-37 if score <toggle_state> variable matches 1 run item replace entity @p[tag=running_trigger] weapon.mainhand with air
execute if score <pose> variable matches -38..-37 if score <toggle_state> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_red"},{"text":" Could not put an item into this slot!","color":"red"}]
execute if score <pose> variable matches -37 if score <toggle_state> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped ",{"text":"head","color":"aqua"}," slot!"]
execute if score <pose> variable matches -38 if score <toggle_state> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped ",{"text":"offhand","color":"aqua"}," slot!"]
execute if score <pose> variable matches -38..-37 run playsound item.armor.equip_generic player @p[tag=running_trigger] ~ ~ ~ 0.5 2

# Lock Armour Stand
execute if score <pose> variable matches -128 run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_red"},{"text":" Are you sure you want to permanently lock the state of this armour stand? ","color":"red"},{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to Lock the Pose of the Nearest Armour Stand","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger pose set -129"}}]
execute if score <pose> variable matches -129 run tag @s add pose.locked
execute if score <pose> variable matches -129 run particle witch ~ ~0.8 ~ 0.1 0.5 0.1 0 10
execute if score <pose> variable matches -129 run playsound block.anvil.land player @s ~ ~ ~ 0.5 2

# Reset Armour Stand
execute if score <pose> variable matches -130 run data remove entity @s Pose
execute if score <pose> variable matches -130 run playsound entity.armor_stand.hit player @p[tag=running_trigger] ~ ~ ~ 0.5 2

# Toggle NBT tags
execute if score <pose> variable matches -71 store success entity @s ShowArms byte 1 unless data storage pandamium:temp NBT{ShowArms:1b}
execute if score <pose> variable matches -72 store success entity @s NoBasePlate byte 1 unless data storage pandamium:temp NBT{NoBasePlate:1b}
execute if score <pose> variable matches -73 store success entity @s NoGravity byte 1 unless data storage pandamium:temp NBT{NoGravity:1b}
execute if score <pose> variable matches -74 store success entity @s Small byte 1 unless data storage pandamium:temp NBT{Small:1b}
execute if score <pose> variable matches -75 store success entity @s CustomNameVisible byte 1 unless data storage pandamium:temp NBT{CustomNameVisible:1b}
execute if score <pose> variable matches -76 run function pandamium:misc/pose/toggle_invisible

# Pose
execute store success score <do_pose> variable if score <pose> variable matches -33..-1
execute if score <pose> variable matches -50 run scoreboard players set <do_pose> variable 1
execute if score <do_pose> variable matches 1 run function pandamium:misc/pose/do_pose

# Mirror
execute if score <pose> variable matches -64 run function pandamium:misc/pose/mirror

# Slot Items
execute if score <pose> variable matches -66..-65 run scoreboard players set <toggle_state> variable 0
execute if score <pose> variable matches -66..-65 store success score <selected_item> variable if data entity @p[tag=running_trigger] SelectedItem.id
execute if score <pose> variable matches -65 if score <selected_item> variable matches 1 unless data storage pandamium:temp NBT.ArmorItems[3].id run scoreboard players set <toggle_state> variable 1
execute if score <pose> variable matches -66 if score <selected_item> variable matches 1 unless data storage pandamium:temp NBT.HandItems[1].id run scoreboard players set <toggle_state> variable 1
execute if score <pose> variable matches -65 if score <toggle_state> variable matches 1 run data modify entity @s ArmorItems[3] set from entity @p[tag=running_trigger] SelectedItem
execute if score <pose> variable matches -66 if score <toggle_state> variable matches 1 run data modify entity @s HandItems[1] set from entity @p[tag=running_trigger] SelectedItem
execute if score <pose> variable matches -66..-65 if score <toggle_state> variable matches 1 run item replace entity @p[tag=running_trigger] weapon.mainhand with air
execute if score <pose> variable matches -66..-65 if score <toggle_state> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_red"},{"text":" Could not put an item into this slot!","color":"red"}]
execute if score <pose> variable matches -65 if score <toggle_state> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Replaced ",{"text":"head","color":"aqua"}," slot!"]
execute if score <pose> variable matches -66 if score <toggle_state> variable matches 1 run tellraw @p[tag=running_trigger] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Replaced ",{"text":"offhand","color":"aqua"}," slot!"]

# Lock Armour Stand
execute if score <pose> variable matches -128 run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_red"},{"text":" Are you sure you want to permanently lock the state of this armour stand? ","color":"red"},{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to Lock the Pose of the Nearest Armour Stand","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger pose set -129"}}]
execute if score <pose> variable matches -129 run tag @s add pose.locked
execute if score <pose> variable matches -129 run particle witch ~ ~0.8 ~ 0.1 0.5 0.1 0 10

# Reset Armour Stand
execute if score <pose> variable matches -130 run data remove entity @s Pose

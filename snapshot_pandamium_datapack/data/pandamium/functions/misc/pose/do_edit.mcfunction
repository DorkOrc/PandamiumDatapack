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
execute if score <pose> variable matches -66..-65 in pandamium:staff_world run function pandamium:misc/pose/swap_item

# Lock Armour Stand
execute if score <pose> variable matches -128 run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_red"},{"text":" Are you sure you want to permanently lock the state of the nearest armour stand? ","color":"red"},{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"Lock","bold":true}," the nearest armour stand"]},"clickEvent":{"action":"run_command","value":"trigger pose set -129"}}]
execute if score <pose> variable matches -129 run tag @s add pose.locked
execute if score <pose> variable matches -129 run particle witch ~ ~0.8 ~ 0.1 0.5 0.1 0 10

# Reset Armour Stand
execute if score <pose> variable matches -130 run data remove entity @s Pose

# Pose
execute if score <pose> variable matches -100..-1 run function pandamium:misc/pose/actions/pose

# Toggle Attributes
execute if score <pose> variable matches -200..-101 run function pandamium:misc/pose/actions/toggle_attribute

# Functions
execute if score <pose> variable matches -301 run function pandamium:misc/pose/actions/mirror
execute if score <pose> variable matches -303..-302 run function pandamium:misc/pose/actions/swap_item
execute if score <pose> variable matches -304 run function pandamium:misc/pose/actions/reset
execute if score <pose> variable matches -305 run function pandamium:misc/pose/actions/face_player

# Lock
execute if score <pose> variable matches -401 store success score <returned> variable run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_red"},{"text":" Are you sure you want to permanently lock the state of the nearest armour stand? ","color":"red"},{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_green"},{"text":"Lock","bold":true}," the nearest armour stand"]},"clickEvent":{"action":"run_command","value":"/trigger pose set -402"}}]
execute if score <pose> variable matches -402 run function pandamium:misc/pose/actions/lock

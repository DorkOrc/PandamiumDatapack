particle wax_off ~ ~1 ~ 0.2 0.4 0.2 0.2 10
data modify storage pandamium:temp pose.nbt set from entity @s

# Pose
execute if score <pose> variable matches -100..-1 run function pandamium:triggers/pose/actions/pose

# Toggle Attributes
execute if score <pose> variable matches -200..-101 run function pandamium:triggers/pose/actions/toggle_attribute

# Functions
execute if score <pose> variable matches -301 run function pandamium:triggers/pose/actions/mirror
execute if score <pose> variable matches -303..-302 run function pandamium:triggers/pose/actions/swap_item
execute if score <pose> variable matches -304 run function pandamium:triggers/pose/actions/reset
execute if score <pose> variable matches -305 run function pandamium:triggers/pose/actions/face_player

# Lock
execute if score <pose> variable matches -401 store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"[Pose]",color:"dark_red"},{text:" Are you sure you want to permanently lock the state of the armour stand you are looking at? ",color:"red"},{text:"[✔]",color:"dark_green",bold:true,hover_event:{action:"show_text",value:[{text:"Click to ",color:"dark_green"},{text:"Lock",bold:true}," the targetted armour stand"]},click_event:{action:"run_command",command:"trigger pose set -402"}}]
execute if score <pose> variable matches -402 run function pandamium:triggers/pose/actions/lock
execute if score <pose> variable matches -403 run function pandamium:triggers/pose/actions/staff_override_unlock

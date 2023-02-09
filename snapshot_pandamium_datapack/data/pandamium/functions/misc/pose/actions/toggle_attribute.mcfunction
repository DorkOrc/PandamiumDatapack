scoreboard players set <sound> variable 1

execute if score <pose> variable matches -101 store success score <value> variable store success entity @s ShowArms byte 1 unless data storage pandamium:temp pose.nbt{ShowArms:1b}
execute if score <pose> variable matches -101 if score <value> variable matches 1 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"ShowArms","color":"aqua"}," to ",{"text":"true","color":"yellow"},"!"]
execute if score <pose> variable matches -101 if score <value> variable matches 0 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"ShowArms","color":"aqua"}," to ",{"text":"false","color":"yellow"},"!"]

execute if score <pose> variable matches -102 store success score <value> variable store success entity @s NoBasePlate byte 1 unless data storage pandamium:temp pose.nbt{NoBasePlate:1b}
execute if score <pose> variable matches -102 if score <value> variable matches 1 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"NoBasePlate","color":"aqua"}," to ",{"text":"true","color":"yellow"},"!"]
execute if score <pose> variable matches -102 if score <value> variable matches 0 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"NoBasePlate","color":"aqua"}," to ",{"text":"false","color":"yellow"},"!"]

execute if score <pose> variable matches -103 store success score <value> variable store success entity @s NoGravity byte 1 unless data storage pandamium:temp pose.nbt{NoGravity:1b}
execute if score <pose> variable matches -103 if score <value> variable matches 1 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"NoGravity","color":"aqua"}," to ",{"text":"true","color":"yellow"},"!"]
execute if score <pose> variable matches -103 if score <value> variable matches 0 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"NoGravity","color":"aqua"}," to ",{"text":"false","color":"yellow"},"!"]

execute if score <pose> variable matches -104 store success score <value> variable store success entity @s Small byte 1 unless data storage pandamium:temp pose.nbt{Small:1b}
execute if score <pose> variable matches -104 if score <value> variable matches 1 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"Small","color":"aqua"}," to ",{"text":"true","color":"yellow"},"!"]
execute if score <pose> variable matches -104 if score <value> variable matches 0 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"Small","color":"aqua"}," to ",{"text":"false","color":"yellow"},"!"]

execute if score <pose> variable matches -105 store success score <value> variable store success entity @s CustomNameVisible byte 1 unless data storage pandamium:temp pose.nbt{CustomNameVisible:1b}
execute if score <pose> variable matches -105 if score <value> variable matches 1 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"CustomNameVisible","color":"aqua"}," to ",{"text":"true","color":"yellow"},"!"]
execute if score <pose> variable matches -105 if score <value> variable matches 0 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"CustomNameVisible","color":"aqua"}," to ",{"text":"false","color":"yellow"},"!"]

execute if score <pose> variable matches -106 run function pandamium:misc/pose/actions/toggle_invisible

execute if score <pose> variable matches -107 store success score <value> variable store success entity @s HasVisualFire byte 1 unless data storage pandamium:temp pose.nbt{HasVisualFire:1b}
execute if score <pose> variable matches -107 if score <value> variable matches 1 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"HasVisualFire","color":"aqua"}," to ",{"text":"true","color":"yellow"},"!"]
execute if score <pose> variable matches -107 if score <value> variable matches 0 store success score <returned> variable run tellraw @p[tag=source] [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Set ",{"text":"HasVisualFire","color":"aqua"}," to ",{"text":"false","color":"yellow"},"!"]

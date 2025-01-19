data modify storage pandamium:temp pose.mirror set from storage pandamium:temp pose.nbt.Pose

# Head
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.Head[1] -1
execute store result storage pandamium:temp pose.mirror.Head[1] float 1 run scoreboard players add <angle> variable 360
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.Head[2] -1
execute store result storage pandamium:temp pose.mirror.Head[2] float 1 run scoreboard players add <angle> variable 360

# Body
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.Body[1] -1
execute store result storage pandamium:temp pose.mirror.Body[1] float 1 run scoreboard players add <angle> variable 360
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.Body[2] -1
execute store result storage pandamium:temp pose.mirror.Body[2] float 1 run scoreboard players add <angle> variable 360

# Left Arm
data modify storage pandamium:temp pose.mirror.LeftArm[0] set from storage pandamium:temp pose.nbt.Pose.RightArm[0]

execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.RightArm[1] -1
execute store result storage pandamium:temp pose.mirror.LeftArm[1] float 1 run scoreboard players add <angle> variable 360
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.RightArm[2] -1
execute store result storage pandamium:temp pose.mirror.LeftArm[2] float 1 run scoreboard players add <angle> variable 360

# Right Arm
data modify storage pandamium:temp pose.mirror.RightArm[0] set from storage pandamium:temp pose.nbt.Pose.LeftArm[0]

execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.LeftArm[1] -1
execute store result storage pandamium:temp pose.mirror.RightArm[1] float 1 run scoreboard players add <angle> variable 360
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.LeftArm[2] -1
execute store result storage pandamium:temp pose.mirror.RightArm[2] float 1 run scoreboard players add <angle> variable 360

# Left Leg
data modify storage pandamium:temp pose.mirror.LeftLeg[0] set from storage pandamium:temp pose.nbt.Pose.RightLeg[0]

execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.RightLeg[1] -1
execute store result storage pandamium:temp pose.mirror.LeftLeg[1] float 1 run scoreboard players add <angle> variable 360
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.RightLeg[2] -1
execute store result storage pandamium:temp pose.mirror.LeftLeg[2] float 1 run scoreboard players add <angle> variable 360

# Right Leg
data modify storage pandamium:temp pose.mirror.RightLeg[0] set from storage pandamium:temp pose.nbt.Pose.LeftLeg[0]

execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.LeftLeg[1] -1
execute store result storage pandamium:temp pose.mirror.RightLeg[1] float 1 run scoreboard players add <angle> variable 360
execute store result score <angle> variable run data get storage pandamium:temp pose.nbt.Pose.LeftLeg[2] -1
execute store result storage pandamium:temp pose.mirror.RightLeg[2] float 1 run scoreboard players add <angle> variable 360

# Transfer New Pose
data modify entity @s Pose set from storage pandamium:temp pose.mirror
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute in pandamium:staff_world run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute in pandamium:staff_world run item replace entity @s weapon.offhand from block 5 0 0 contents

execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{text:"[Pose]",color:"dark_green"},{text:" Mirrored",color:"aqua"},{text:" target's pose!",color:"green"}]
scoreboard players set <sound> variable 1

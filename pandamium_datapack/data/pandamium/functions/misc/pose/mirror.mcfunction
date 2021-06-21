data modify storage pandamium:pose OldPose set from entity @s Pose
data modify storage pandamium:pose NewPose set from storage pandamium:pose OldPose

# Head
execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.Head[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.Head[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.Head[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.Head[2] float 1 run scoreboard players get <new_pose> variable

# Body
execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.Body[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.Body[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.Body[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.Body[2] float 1 run scoreboard players get <new_pose> variable

# Left Arm
data modify storage pandamium:pose NewPose.LeftArm[0] set from storage pandamium:pose OldPose.RightArm[0]

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.RightArm[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.LeftArm[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.RightArm[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.LeftArm[2] float 1 run scoreboard players get <new_pose> variable

# Right Arm
data modify storage pandamium:pose NewPose.RightArm[0] set from storage pandamium:pose OldPose.LeftArm[0]

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.LeftArm[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.RightArm[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.LeftArm[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.RightArm[2] float 1 run scoreboard players get <new_pose> variable

# Left Leg
data modify storage pandamium:pose NewPose.LeftLeg[0] set from storage pandamium:pose OldPose.RightLeg[0]

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.RightLeg[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.LeftLeg[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.RightLeg[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.LeftLeg[2] float 1 run scoreboard players get <new_pose> variable

# Right Leg
data modify storage pandamium:pose NewPose.RightLeg[0] set from storage pandamium:pose OldPose.LeftLeg[0]

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.LeftLeg[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.RightLeg[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:pose OldPose.LeftLeg[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:pose NewPose.RightLeg[2] float 1 run scoreboard players get <new_pose> variable

# 
data modify entity @s Pose set from storage pandamium:pose NewPose
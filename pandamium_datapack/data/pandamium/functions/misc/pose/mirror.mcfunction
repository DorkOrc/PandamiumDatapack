data modify storage pandamium:temp OldPose set from entity @s Pose
data modify storage pandamium:temp NewPose set from storage pandamium:temp OldPose

# Head
execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.Head[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.Head[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.Head[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.Head[2] float 1 run scoreboard players get <new_pose> variable

# Body
execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.Body[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.Body[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.Body[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.Body[2] float 1 run scoreboard players get <new_pose> variable

# Left Arm
data modify storage pandamium:temp NewPose.LeftArm[0] set from storage pandamium:temp OldPose.RightArm[0]

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.RightArm[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.LeftArm[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.RightArm[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.LeftArm[2] float 1 run scoreboard players get <new_pose> variable

# Right Arm
data modify storage pandamium:temp NewPose.RightArm[0] set from storage pandamium:temp OldPose.LeftArm[0]

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.LeftArm[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.RightArm[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.LeftArm[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.RightArm[2] float 1 run scoreboard players get <new_pose> variable

# Left Leg
data modify storage pandamium:temp NewPose.LeftLeg[0] set from storage pandamium:temp OldPose.RightLeg[0]

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.RightLeg[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.LeftLeg[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.RightLeg[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.LeftLeg[2] float 1 run scoreboard players get <new_pose> variable

# Right Leg
data modify storage pandamium:temp NewPose.RightLeg[0] set from storage pandamium:temp OldPose.LeftLeg[0]

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.LeftLeg[1]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.RightLeg[1] float 1 run scoreboard players get <new_pose> variable

execute store result score <old_pose> variable run data get storage pandamium:temp OldPose.LeftLeg[2]
scoreboard players set <new_pose> variable 360
scoreboard players operation <new_pose> variable -= <old_pose> variable
execute store result storage pandamium:temp NewPose.RightLeg[2] float 1 run scoreboard players get <new_pose> variable

# 
data modify entity @s Pose set from storage pandamium:temp NewPose
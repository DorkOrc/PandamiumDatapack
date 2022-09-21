tag @s add pose.locked
particle witch ~ ~0.8 ~ 0.1 0.5 0.1 0 10

execute store success score <returned> variable run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_green"},{"text":" Locked ","color":"aqua"},{"text":"Pose!","color":"green"}]
scoreboard players set <sound> variable 2

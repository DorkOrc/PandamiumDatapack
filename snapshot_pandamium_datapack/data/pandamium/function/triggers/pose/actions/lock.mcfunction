tag @s add pose.locked
particle witch ~ ~0.8 ~ 0.1 0.5 0.1 0 10

execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_green"},{"text":" Locked","color":"aqua"},{"text":" target's pose!","color":"green"}]
scoreboard players set <sound> variable 2

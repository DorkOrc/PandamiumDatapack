data remove entity @s Pose

execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_green"},{"text":" Reset ","color":"aqua"},{"text":" target's pose!","color":"green"}]
scoreboard players set <sound> variable 1

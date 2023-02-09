execute facing entity @p[tag=source] feet run tp @s ~ ~ ~ ~ ~

execute store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Pose]","color":"dark_green"},{"text":" Changed ","color":"aqua"},{"text":"Rotation!","color":"green"}]
scoreboard players set <sound> variable 1

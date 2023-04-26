execute facing entity @a[tag=source,limit=1] feet run tp @s ~ ~ ~ ~ ~

execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_green"},{"text":" Changed ","color":"aqua"},{"text":"Rotation!","color":"green"}]
scoreboard players set <sound> variable 1

execute facing entity @p[tag=running_trigger] feet run tp @s ~ ~ ~ ~ ~

execute store success score <returned> variable run tellraw @p[tag=running_trigger] [{"text":"[Pose]","color":"dark_green"},{"text":" Changed ","color":"aqua"},{"text":"Rotation!","color":"green"}]
scoreboard players set <sound> variable 4
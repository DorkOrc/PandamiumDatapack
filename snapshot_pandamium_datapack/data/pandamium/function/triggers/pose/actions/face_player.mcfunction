execute facing entity @a[tag=source,limit=1] feet run tp @s ~ ~ ~ ~ 0

execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_green"},[{"text":" Changed target's ","color":"green"},{"text":"rotation","color":"aqua"},"!"]]
scoreboard players set <sound> variable 1

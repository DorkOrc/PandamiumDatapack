execute if entity @s[tag=!pose.locked] store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_red"},{"text":" The armour stand you are looking at is not locked!","color":"red"}]
execute if score <returned> variable matches 1 run return 0

tag @s remove pose.locked
particle witch ~ ~0.8 ~ 0.1 0.5 0.1 0 10

execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Pose]","color":"dark_green"},{"text":" Unlocked","color":"aqua"},{"text":" the targetted armour stand!","color":"green"}]
scoreboard players set <sound> variable 4

tag @s add sender

tellraw @a[tag=receiver,limit=1] [{"text":"","color":"green"},{"text":"[TPA]","color":"blue"}," You",{"text":" denied ","color":"aqua"},[{"selector":"@s"},"'s"]," TPA request!"]
tellraw @s [{"text":"","color":"gray"},{"text":"[TPA] ","color":"dark_gray"},{"selector":"@a[tag=receiver,limit=1]","color":"gray"},{"text":" denied","bold":true}," your TPA request!"]
scoreboard players set <returned> variable 1

tag @s remove sender

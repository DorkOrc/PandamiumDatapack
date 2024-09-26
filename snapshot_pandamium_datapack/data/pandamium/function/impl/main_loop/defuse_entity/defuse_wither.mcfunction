tag @s add defused

data modify entity @s Invul set value 0
execute store result entity @s Health float 1 run attribute @s minecraft:max_health get

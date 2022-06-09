# run AT @s

summon boat
data modify entity @e[type=boat,limit=1,sort=nearest,distance=0] {} merge from entity @s
kill
summon item ~ ~1 ~ {Item:{id:"minecraft:chest",Count:1b}}

scoreboard players set <player_exists> variable 1

tag @s add sender

tellraw @a[tag=receiver,limit=1] [{text:"",color:"green"},{text:"[TPA]",color:"dark_green"},{text:" Denied ",color:"aqua"},{selector:"@s",extra:["'s"]}," TPA request!"]
tellraw @s [{text:"",color:"gray"},{text:"[TPA] ",color:"dark_gray"},{selector:"@a[tag=receiver,limit=1]",color:"gray"},{text:" denied",bold:true}," your TPA request!"]
scoreboard players set <returned> variable 1

tag @s remove sender

tellraw @s [{text:"",color:"green"},{text:"[Gift] ",color:"blue"},{selector:"@a[tag=source,limit=1]"}," gifted you a ",{text:"reward credit",color:"aqua"},"!"]

scoreboard players add @s reward_credits 1

execute unless entity @s[gamemode=spectator] unless score @s hidden matches 1.. anchored eyes run particle heart ^ ^ ^ 0.3 0.3 0.3 0 5
playsound block.note_block.bell master @s ~ ~ ~ 1 1.4 1

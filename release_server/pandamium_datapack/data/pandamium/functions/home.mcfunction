#Make sure all necessary objectives are tracked
scoreboard players add @a xHome1 0
scoreboard players add @a yHome1 0
scoreboard players add @a zHome1 0
scoreboard players add @a[scores={gameplayPerms=3..}] xHome2 0
scoreboard players add @a[scores={gameplayPerms=3..}] yHome2 0
scoreboard players add @a[scores={gameplayPerms=3..}] zHome2 0
scoreboard players add @a[scores={gameplayPerms=4..}] xHome3 0
scoreboard players add @a[scores={gameplayPerms=4..}] yHome3 0
scoreboard players add @a[scores={gameplayPerms=4..}] zHome3 0
scoreboard players add @a[scores={gameplayPerms=4..}] xHome4 0
scoreboard players add @a[scores={gameplayPerms=4..}] yHome4 0
scoreboard players add @a[scores={gameplayPerms=4..}] zHome4 0
scoreboard players add @a[scores={gameplayPerms=4..}] xHome5 0
scoreboard players add @a[scores={gameplayPerms=4..}] yHome5 0
scoreboard players add @a[scores={gameplayPerms=4..}] zHome5 0
scoreboard players add @a homeTimer 0

#Manage cooldowns and remove old portals
scoreboard players set @a[scores={gameplayPerms=4..}] homeTimer 0
scoreboard players remove @a[scores={homeTimer=1..}] homeTimer 1
execute at @e[tag=portal_remover] run setblock ~ ~ ~ air
kill @e[tag=portal_remover]

#Home cooldown command
scoreboard players enable @a homeCooldown
execute as @a[scores={homeCooldown=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins = @s homeTimer
execute as @a[scores={homeCooldown=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins /= <ticksPerMinute> variable
execute as @a[scores={homeCooldown=1..,homeTimer=1..}] run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You need to wait another ","color":"green"},{"score":{"name":"@s","objective":"homeTimerMins"},"color":"aqua"},{"text":" minutes before you can use ","color":"green"},{"text":"/trigger home","color":"aqua"},{"text":" again! You can ","color":"green"},{"text":"donate","color":"aqua"},{"text":" to remove it!","color":"green"}]
execute as @a[scores={homeCooldown=1..,homeTimer=0}] run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You don't have a cooldown, you can teleport to your ","color":"green"},{"text":"home","color":"aqua"},{"text":" using ","color":"green"},{"text":"/trigger home","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a homeCooldown 0

#Sethome command
scoreboard players enable @a sethome
tellraw @a[scores={sethome=6..}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" It is only possible to have ","color":"green"},{"text":"5","color":"aqua"},{"text":" homes!","color":"green"}]
scoreboard players set @a[scores={sethome=6..}] sethome 0
tellraw @a[scores={sethome=2,gameplayPerms=..2}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You can't use this ","color":"green"},{"text":"home","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to get access to more ","color":"green"},{"text":"homes","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a[scores={sethome=2,gameplayPerms=..2}] sethome 0
tellraw @a[scores={sethome=3..,gameplayPerms=..3}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You can't use this ","color":"green"},{"text":"home","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to get access to more ","color":"green"},{"text":"homes","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a[scores={sethome=3..,gameplayPerms=..3}] sethome 0
tellraw @a[scores={sethome=1..},nbt=!{Dimension:0}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You can only set your home in the overworld!","color":"green"}]
scoreboard players set @a[scores={sethome=1..},nbt=!{Dimension:0}] sethome 0
execute as @a[scores={sethome=1..}] store result score @s xCoords run data get entity @s Pos[0]
execute as @a[scores={sethome=1..}] store result score @s yCoords run data get entity @s Pos[1]
execute as @a[scores={sethome=1..}] store result score @s zCoords run data get entity @s Pos[2]
execute as @a[scores={sethome=1}] run scoreboard players operation @s xHome1 = @s xCoords
execute as @a[scores={sethome=1}] run scoreboard players operation @s yHome1 = @s yCoords
execute as @a[scores={sethome=1}] run scoreboard players operation @s zHome1 = @s zCoords
execute as @a[scores={sethome=2}] run scoreboard players operation @s xHome2 = @s xCoords
execute as @a[scores={sethome=2}] run scoreboard players operation @s yHome2 = @s yCoords
execute as @a[scores={sethome=2}] run scoreboard players operation @s zHome2 = @s zCoords
execute as @a[scores={sethome=3}] run scoreboard players operation @s xHome3 = @s xCoords
execute as @a[scores={sethome=3}] run scoreboard players operation @s yHome3 = @s yCoords
execute as @a[scores={sethome=3}] run scoreboard players operation @s zHome3 = @s zCoords
execute as @a[scores={sethome=4}] run scoreboard players operation @s xHome4 = @s xCoords
execute as @a[scores={sethome=4}] run scoreboard players operation @s yHome4 = @s yCoords
execute as @a[scores={sethome=4}] run scoreboard players operation @s zHome4 = @s zCoords
execute as @a[scores={sethome=5}] run scoreboard players operation @s xHome5 = @s xCoords
execute as @a[scores={sethome=5}] run scoreboard players operation @s yHome5 = @s yCoords
execute as @a[scores={sethome=5}] run scoreboard players operation @s zHome5 = @s zCoords
execute as @a[scores={sethome=1..}] run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" Successfully set your home nr. ","color":"green"},{"score":{"name":"@s","objective":"sethome"},"color":"aqua"},{"text":" to x=","color":"green"},{"score":{"name":"@s","objective":"xCoords"},"color":"aqua"},{"text":" y=","color":"green"},{"score":{"name":"@s","objective":"yCoords"},"color":"aqua"},{"text":" z=","color":"green"},{"score":{"name":"@s","objective":"zCoords"},"color":"aqua"}]
scoreboard players set @a sethome 0

#Home command (Before teleporting players)
scoreboard players enable @a home
tellraw @a[scores={home=6..}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" It is only possible to have ","color":"green"},{"text":"5","color":"aqua"},{"text":" homes!","color":"green"}]
scoreboard players set @a[scores={home=6..}] home 0
tellraw @a[scores={home=2,gameplayPerms=..2}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You can't use this ","color":"green"},{"text":"home","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to get access to more ","color":"green"},{"text":"homes","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a[scores={home=2,gameplayPerms=..2}] home 0
tellraw @a[scores={home=3..,gameplayPerms=..3}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You can't use this ","color":"green"},{"text":"home","color":"aqua"},{"text":"! Please check ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" for information on how to get access to more ","color":"green"},{"text":"homes","color":"aqua"},{"text":"!","color":"green"}]
scoreboard players set @a[scores={home=3..,gameplayPerms=..3}] home 0
execute as @a[scores={home=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins = @s homeTimer
execute as @a[scores={home=1..,homeTimer=1..}] run scoreboard players operation @s homeTimerMins /= <ticksPerMinute> variable
execute as @a[scores={home=1..,homeTimer=1..}] run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You need to wait another ","color":"green"},{"score":{"name":"@s","objective":"homeTimerMins"},"color":"aqua"},{"text":" minutes before you can use ","color":"green"},{"text":"/trigger home","color":"aqua"},{"text":" again! You can ","color":"green"},{"text":"donate","color":"aqua"},{"text":" to remove it!","color":"green"}]
scoreboard players set @a[scores={home=1..,homeTimer=1..}] home 0
tellraw @a[scores={home=1,xHome1=0,yHome1=0,zHome1=0}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You haven't set your home yet. You can use ","color":"green"},{"text":"/trigger sethome","color":"aqua"},{"text":" to set your home!","color":"green"}]
scoreboard players set @a[scores={home=1,xHome1=0,yHome1=0,zHome1=0}] home 0
tellraw @a[scores={home=2,xHome2=0,yHome2=0,zHome2=0}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You haven't set this home yet. You can use ","color":"green"},{"text":"/trigger sethome","color":"aqua"},{"text":" to set your home!","color":"green"}]
scoreboard players set @a[scores={home=2,xHome2=0,yHome2=0,zHome2=0}] home 0
tellraw @a[scores={home=3,xHome3=0,yHome3=0,zHome3=0}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You haven't set this home yet. You can use ","color":"green"},{"text":"/trigger sethome","color":"aqua"},{"text":" to set your home!","color":"green"}]
scoreboard players set @a[scores={home=3,xHome3=0,yHome3=0,zHome3=0}] home 0
tellraw @a[scores={home=4,xHome4=0,yHome4=0,zHome4=0}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You haven't set this home yet. You can use ","color":"green"},{"text":"/trigger sethome","color":"aqua"},{"text":" to set your home!","color":"green"}]
scoreboard players set @a[scores={home=4,xHome4=0,yHome4=0,zHome4=0}] home 0
tellraw @a[scores={home=5,xHome5=0,yHome5=0,zHome5=0}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You haven't set this home yet. You can use ","color":"green"},{"text":"/trigger sethome","color":"aqua"},{"text":" to set your home!","color":"green"}]
scoreboard players set @a[scores={home=5,xHome5=0,yHome5=0,zHome5=0}] home 0

#Home command (do the teleporting)
execute as @a[scores={home=1..,homeTimer=0}] at @s in minecraft:overworld run tp ~ 255 ~
execute as @a[scores={home=1..,homeTimer=0}] at @s in minecraft:overworld run setblock ~ ~ ~ minecraft:end_gateway{ExactTeleport:1b}
execute as @a[scores={home=1,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s xHome1
execute as @a[scores={home=1,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s yHome1
execute as @a[scores={home=1,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s zHome1
execute as @a[scores={home=2,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s xHome2
execute as @a[scores={home=2,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s yHome2
execute as @a[scores={home=2,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s zHome2
execute as @a[scores={home=3,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s xHome3
execute as @a[scores={home=3,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s yHome3
execute as @a[scores={home=3,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s zHome3
execute as @a[scores={home=4,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s xHome4
execute as @a[scores={home=4,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s yHome4
execute as @a[scores={home=4,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s zHome4
execute as @a[scores={home=5,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @s xHome5
execute as @a[scores={home=5,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @s yHome5
execute as @a[scores={home=5,homeTimer=0}] at @s in minecraft:overworld store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @s zHome5
execute as @a[scores={home=1..,homeTimer=0}] at @s in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["portal_remover"]}

#Home command (After teleporting players)
tellraw @a[scores={home=1..3,homeTimer=0}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" Successfully teleported to your home!","color":"green"}]
scoreboard players set @a[scores={home=1..,homeTimer=0,gameplayPerms=0}] homeTimer 36000
scoreboard players set @a[scores={home=1..,homeTimer=0,gameplayPerms=1}] homeTimer 24000
scoreboard players set @a[scores={home=1..,homeTimer=0,gameplayPerms=2}] homeTimer 12000
scoreboard players set @a[scores={home=1..,homeTimer=0,gameplayPerms=3}] homeTimer 6000
scoreboard players set @a home 0
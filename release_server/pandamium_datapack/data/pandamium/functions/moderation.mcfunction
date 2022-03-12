#Modmenu command
scoreboard players enable @a[scores={moderationPerms=1..}] modMenu
tellraw @a[scores={modMenu=1..}] [{"text":"-------------------------\n","color":"aqua"},{"text":"[Pandamium]","color":"dark_blue"},{"text":" Mod menu - use with caution!","color":"green"}]
tellraw @a[scores={modMenu=1..,moderationPerms=1}] [{"text":"Actions: [","color":"green"},{"text":"jail","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger jail set "}},{"text":"] [","color":"green"},{"text":"unjail","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger unjail set "}},{"text":"]","color":"green"}]
tellraw @a[scores={modMenu=1..,moderationPerms=2..}] [{"text":"Actions: [","color":"green"},{"text":"jail","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger jail set "}},{"text":"] [","color":"green"},{"text":"unjail","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger unjail set "}},{"text":"]","color":"green"},{"text":" [","color":"green"},{"text":"ban","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger ban set "}},{"text":"]","color":"green"}]
tellraw @a[scores={modMenu=1..}] [{"text":"--- Player list: ---","color":"green"}]
execute as @a run tellraw @a[scores={modMenu=1..}] [{"text":"Name: ","color":"green"},{"text":"[","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"]","color":"aqua"},{"text":" --> ID: ","color":"green"},{"score":{"name":"@s","objective":"id"},"color":"aqua"},{"text":"; Entities: ","color":"green"},{"score":{"name":"@s","objective":"entitiesNearby"},"color":"aqua"}]
tellraw @a[scores={modMenu=1..}] [{"text":"-------------------------","color":"aqua"}]
scoreboard players set @a modMenu 0

#Jail
scoreboard players enable @a[scores={moderationPerms=1..}] jail
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0}] if score @s jail = @p id run tellraw @p [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You were put into ","color":"green"},{"text":"jail","color":"aqua"},{"text":" by ","color":"green"},{"selector":"@s"},{"text":"!","color":"green"}]
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0},nbt={Dimension:0}] if score @s jail = @p id store result score @p xReal run data get entity @p Pos[0]
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0},nbt={Dimension:0}] if score @s jail = @p id store result score @p yReal run data get entity @p Pos[1]
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0},nbt={Dimension:0}] if score @s jail = @p id store result score @p zReal run data get entity @p Pos[2]
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0},nbt=!{Dimension:0}] if score @s jail = @p id run scoreboard players set @p xReal 0
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0},nbt=!{Dimension:0}] if score @s jail = @p id run scoreboard players set @p yReal 64
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0},nbt=!{Dimension:0}] if score @s jail = @p id run scoreboard players set @p zReal 0
execute as @a[scores={jail=1..}] at @a[scores={jailStatus=..0}] if score @s jail = @p id run scoreboard players operation @p jailStatus = @s id
scoreboard players set @a jail 0

#Unjail
scoreboard players enable @a[scores={moderationPerms=1..}] unjail
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id run tellraw @p [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You were released from ","color":"green"},{"text":"jail","color":"aqua"},{"text":"!","color":"green"}]
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id in minecraft:overworld run tp @p ~ 255 ~
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id in minecraft:overworld run setblock ~ ~ ~ minecraft:end_gateway{ExactTeleport:1b}
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id in minecraft:overworld store result block ~ ~ ~ ExitPortal.X int 1 run scoreboard players get @p xReal
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id in minecraft:overworld store result block ~ ~ ~ ExitPortal.Y int 1 run scoreboard players get @p yReal
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id in minecraft:overworld store result block ~ ~ ~ ExitPortal.Z int 1 run scoreboard players get @p zReal
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id in minecraft:overworld run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["portal_remover"]}
execute as @a[scores={unjail=1..}] at @a[scores={jailStatus=1..}] if score @s unjail = @p id run scoreboard players operation @p jailStatus *= <-1> variable
scoreboard players set @a unjail 0

#Jail enforcement
scoreboard players add @a jailStatus 0
tp @a[x=9,y=81,z=-10,distance=5..,scores={jailStatus=1..}] 9 81 -10
tp @a[scores={jailStatus=1..},nbt=!{Dimension:0}] 0 66 -26

#Ban
scoreboard players enable @a[scores={moderationPerms=2..}] ban
execute as @a[scores={ban=1..}] at @a[scores={moderationPerms=..1}] if score @s ban = @p id run scoreboard players operation @p banStatus = @s id
scoreboard players set @a ban 0

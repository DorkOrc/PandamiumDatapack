scoreboard players set @s in_nether_spawn 0
execute if entity @s[x=-128,y=0,z=-128,dx=256,dy=256,dz=256,nbt={Dimension:-1}] run scoreboard players set @s in_nether_spawn 1

gamemode survival @s[gamemode=adventure,scores={in_nether_spawn=0}]
gamemode adventure @s[gamemode=survival,scores={in_nether_spawn=1}]
scoreboard players set @a in_nether_spawn 0
execute as @a at @s run scoreboard players set @s[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024,nbt={Dimension:-1}] in_nether_spawn 1

gamemode survival @a[gamemode=adventure,scores={in_nether_spawn=0}]
gamemode adventure @a[gamemode=survival,scores={in_nether_spawn=1}]
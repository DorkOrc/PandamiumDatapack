scoreboard players set @a in_nether_spawn 0
scoreboard players set @a[x=-128,y=0,z=-128,dx=256,dy=256,dz=256,nbt={Dimension:-1}] in_nether_spawn 1

gamemode survival @a[gamemode=adventure,scores={in_nether_spawn=0}]
gamemode adventure @a[gamemode=survival,scores={in_nether_spawn=1}]
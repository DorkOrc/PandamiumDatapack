# run IN pandamium:staff_world

tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] add ignore

setblock 0 0 0 shulker_box
data modify block 0 0 0 Items set from entity @s Items
item replace block 0 0 0 container.26 with chest
loot spawn 0 0 0 mine 0 0 0 air{drop_contents:1b}

#so that items that are dropped from these mobs without the player knowing aren't lost forever.
execute as @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item,tag=!ignore] run data merge entity @s {Age:-32768,Invulnerable:1b}

tp @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item,tag=!ignore] @s
tag @e[x=0,y=0,z=0,dx=0,dy=0,dz=0,type=item] remove ignore

item replace entity @s horse.0 with air
item replace entity @s horse.1 with air
item replace entity @s horse.2 with air
item replace entity @s horse.3 with air
item replace entity @s horse.4 with air
item replace entity @s horse.5 with air
item replace entity @s horse.6 with air
item replace entity @s horse.7 with air
item replace entity @s horse.8 with air
item replace entity @s horse.9 with air
item replace entity @s horse.10 with air
item replace entity @s horse.11 with air
item replace entity @s horse.12 with air
item replace entity @s horse.13 with air
item replace entity @s horse.14 with air

data merge entity @s {ChestedHorse:0b}

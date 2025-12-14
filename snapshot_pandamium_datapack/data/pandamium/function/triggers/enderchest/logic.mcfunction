# context: in pandamium:staff_world

execute unless predicate pandamium:player/min_gameplay_perms/supporter run return run tellraw @s [{text:"[Enderchest]",color:"dark_red"},{storage:"pandamium:dictionary",nbt:"triggers.supporter_only_trigger",interpret:true},{text:"\n This command would let you access your ender chest, wherever you are in the world, without having to place one!",color:"gray"}]

execute if score @s jailed matches 1.. run return run tellraw @s [{text:"[Enderchest]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]

execute unless block 2 0 0 minecraft:yellow_shulker_box run return run tellraw @s [{text:"[Enderchest]",color:"dark_red"},{text:" An error occurred while trying to swap your enderchest and inventory slots!",color:"red"}]

execute unless items entity @s inventory.* * unless items entity @s enderchest.* * run return run tellraw @s [{text:"[Enderchest]",color:"dark_red"},{text:" No items were swapped!",color:"red"}]

# enderchest -> buffer
item replace block 2 0 0 container.0 from entity @s enderchest.0
item replace block 2 0 0 container.1 from entity @s enderchest.1
item replace block 2 0 0 container.2 from entity @s enderchest.2
item replace block 2 0 0 container.3 from entity @s enderchest.3
item replace block 2 0 0 container.4 from entity @s enderchest.4
item replace block 2 0 0 container.5 from entity @s enderchest.5
item replace block 2 0 0 container.6 from entity @s enderchest.6
item replace block 2 0 0 container.7 from entity @s enderchest.7
item replace block 2 0 0 container.8 from entity @s enderchest.8
item replace block 2 0 0 container.9 from entity @s enderchest.9
item replace block 2 0 0 container.10 from entity @s enderchest.10
item replace block 2 0 0 container.11 from entity @s enderchest.11
item replace block 2 0 0 container.12 from entity @s enderchest.12
item replace block 2 0 0 container.13 from entity @s enderchest.13
item replace block 2 0 0 container.14 from entity @s enderchest.14
item replace block 2 0 0 container.15 from entity @s enderchest.15
item replace block 2 0 0 container.16 from entity @s enderchest.16
item replace block 2 0 0 container.17 from entity @s enderchest.17
item replace block 2 0 0 container.18 from entity @s enderchest.18
item replace block 2 0 0 container.19 from entity @s enderchest.19
item replace block 2 0 0 container.20 from entity @s enderchest.20
item replace block 2 0 0 container.21 from entity @s enderchest.21
item replace block 2 0 0 container.22 from entity @s enderchest.22
item replace block 2 0 0 container.23 from entity @s enderchest.23
item replace block 2 0 0 container.24 from entity @s enderchest.24
item replace block 2 0 0 container.25 from entity @s enderchest.25
item replace block 2 0 0 container.26 from entity @s enderchest.26

# inventory -> enderchest
item replace entity @s enderchest.0 from entity @s inventory.0
item replace entity @s enderchest.1 from entity @s inventory.1
item replace entity @s enderchest.2 from entity @s inventory.2
item replace entity @s enderchest.3 from entity @s inventory.3
item replace entity @s enderchest.4 from entity @s inventory.4
item replace entity @s enderchest.5 from entity @s inventory.5
item replace entity @s enderchest.6 from entity @s inventory.6
item replace entity @s enderchest.7 from entity @s inventory.7
item replace entity @s enderchest.8 from entity @s inventory.8
item replace entity @s enderchest.9 from entity @s inventory.9
item replace entity @s enderchest.10 from entity @s inventory.10
item replace entity @s enderchest.11 from entity @s inventory.11
item replace entity @s enderchest.12 from entity @s inventory.12
item replace entity @s enderchest.13 from entity @s inventory.13
item replace entity @s enderchest.14 from entity @s inventory.14
item replace entity @s enderchest.15 from entity @s inventory.15
item replace entity @s enderchest.16 from entity @s inventory.16
item replace entity @s enderchest.17 from entity @s inventory.17
item replace entity @s enderchest.18 from entity @s inventory.18
item replace entity @s enderchest.19 from entity @s inventory.19
item replace entity @s enderchest.20 from entity @s inventory.20
item replace entity @s enderchest.21 from entity @s inventory.21
item replace entity @s enderchest.22 from entity @s inventory.22
item replace entity @s enderchest.23 from entity @s inventory.23
item replace entity @s enderchest.24 from entity @s inventory.24
item replace entity @s enderchest.25 from entity @s inventory.25
item replace entity @s enderchest.26 from entity @s inventory.26

# buffer -> inventory
item replace entity @s inventory.0 from block 2 0 0 container.0
item replace entity @s inventory.1 from block 2 0 0 container.1
item replace entity @s inventory.2 from block 2 0 0 container.2
item replace entity @s inventory.3 from block 2 0 0 container.3
item replace entity @s inventory.4 from block 2 0 0 container.4
item replace entity @s inventory.5 from block 2 0 0 container.5
item replace entity @s inventory.6 from block 2 0 0 container.6
item replace entity @s inventory.7 from block 2 0 0 container.7
item replace entity @s inventory.8 from block 2 0 0 container.8
item replace entity @s inventory.9 from block 2 0 0 container.9
item replace entity @s inventory.10 from block 2 0 0 container.10
item replace entity @s inventory.11 from block 2 0 0 container.11
item replace entity @s inventory.12 from block 2 0 0 container.12
item replace entity @s inventory.13 from block 2 0 0 container.13
item replace entity @s inventory.14 from block 2 0 0 container.14
item replace entity @s inventory.15 from block 2 0 0 container.15
item replace entity @s inventory.16 from block 2 0 0 container.16
item replace entity @s inventory.17 from block 2 0 0 container.17
item replace entity @s inventory.18 from block 2 0 0 container.18
item replace entity @s inventory.19 from block 2 0 0 container.19
item replace entity @s inventory.20 from block 2 0 0 container.20
item replace entity @s inventory.21 from block 2 0 0 container.21
item replace entity @s inventory.22 from block 2 0 0 container.22
item replace entity @s inventory.23 from block 2 0 0 container.23
item replace entity @s inventory.24 from block 2 0 0 container.24
item replace entity @s inventory.25 from block 2 0 0 container.25
item replace entity @s inventory.26 from block 2 0 0 container.26

# successfully swapped
tellraw @s [{text:"[Enderchest]",color:"dark_green"},{text:" Swapped your enderchest and inventory slots!",color:"green"}]

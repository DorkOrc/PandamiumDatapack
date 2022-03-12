scoreboard players set <can_tp> variable 1
execute unless entity @s[x=-6,y=64,z=6,distance=..2] unless entity @s[x=-55,y=74,z=35,distance=..3] unless entity @s[x=22,y=68,z=46,distance=..3] unless entity @s[x=59,y=70,z=-13,distance=..3] unless entity @s[x=-9,y=65,z=-44,distance=..3] run scoreboard players set <can_tp> variable 0
execute if score <can_tp> variable matches 1 run function pandamium:misc/teleport/random/main

execute store result entity @s Pos[0] double 1 run scoreboard players get <tp_x> variable
execute store result entity @s Pos[1] double 1 run scoreboard players get <tp_y> variable
execute store result entity @s Pos[2] double 1 run scoreboard players get <tp_z> variable

execute unless entity @s[distance=..25] store success score <returned> variable run tellraw @a[tag=running_trigger,limit=1] [{"text":"[Containers]","color":"dark_red"},{"text":" The block you selected is too far away!","color":"red"}]
execute if score <returned> variable matches 0 at @s as @a[tag=running_trigger,limit=1] run function pandamium:containers/run/inspect/reselect_block/at_block

kill

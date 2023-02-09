execute store result entity @s Pos[0] double 1 run scoreboard players get <selected_block_x> variable
execute store result entity @s Pos[1] double 1 run scoreboard players get <selected_block_y> variable
execute store result entity @s Pos[2] double 1 run scoreboard players get <selected_block_z> variable

execute unless entity @s[distance=..25] store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Containers]","color":"dark_red"},{"text":" The block you selected is too far away!","color":"red"}]
execute if score <returned> variable matches 0 at @s as @p[tag=source] run function pandamium:containers/run/inspect/reselect_block/at_block

kill

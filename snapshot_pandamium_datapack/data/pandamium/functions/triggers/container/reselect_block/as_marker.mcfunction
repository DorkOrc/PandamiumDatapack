execute store result entity @s Pos[0] double 1 run scoreboard players get <selected_block_x> variable
execute store result entity @s Pos[1] double 1 run scoreboard players get <selected_block_y> variable
execute store result entity @s Pos[2] double 1 run scoreboard players get <selected_block_z> variable

execute unless entity @s[distance=..32] store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[Containers]","color":"dark_red"},{"text":" The block you selected is too far away!","color":"red"}]
execute if score <returned> variable matches 0 positioned as @s as @a[tag=source,limit=1] run function pandamium:triggers/container/reselect_block/at_block

function pandamium:utils/kill

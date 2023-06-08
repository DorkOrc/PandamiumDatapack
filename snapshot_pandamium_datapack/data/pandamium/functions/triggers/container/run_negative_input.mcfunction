execute unless score @s selected_block.x = @s selected_block.x store success score <returned> variable run tellraw @s [{"text":"[Containers]","color":"dark_red"},{"text":" You have not selected a block!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation <selected_block_x> variable = @s selected_block.x
execute if score <returned> variable matches 0 run scoreboard players operation <selected_block_y> variable = @s selected_block.y
execute if score <returned> variable matches 0 run scoreboard players operation <selected_block_z> variable = @s selected_block.z

scoreboard players set <slot> variable -1
scoreboard players operation <slot> variable -= @s container

data remove storage pandamium:containers source
execute if score <returned> variable matches 0 summon marker run function pandamium:triggers/container/reselect_block/as_marker

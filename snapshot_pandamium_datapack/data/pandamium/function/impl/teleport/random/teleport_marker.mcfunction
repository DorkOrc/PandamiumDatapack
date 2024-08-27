scoreboard players set <i> variable 0
function pandamium:impl/teleport/random/loop

execute if score <i> variable matches 10.. run kill
execute if score <i> variable matches 10.. run return run tellraw @a[tag=teleport.random.player,limit=1] [{"text":"[Info]","color":"dark_red"},{"text":" Iteration limit exceeded! If this issue continues to occur, let a staff member know.","color":"red"}]

execute positioned as @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute store result storage pandamium:templates macro.x__y__z.x int 1 run data get entity @s Pos[0]
execute store result storage pandamium:templates macro.x__y__z.y int 1 run data get entity @s Pos[1]
execute store result storage pandamium:templates macro.x__y__z.z int 1 run data get entity @s Pos[2]
execute in overworld positioned as @s as @a[tag=teleport.random.player,limit=1] rotated as @s run function pandamium:impl/teleport/random/on_success with storage pandamium:templates macro.x__y__z

kill

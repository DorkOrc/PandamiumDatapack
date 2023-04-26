kill

scoreboard players set <i> variable 0
function pandamium:impl/teleport/random/loop

execute if score <i> variable matches 10.. run tellraw @a[tag=teleport.random.player,limit=1] [{"text":"[Info]","color":"dark_red"},{"text":" Iteration limit exceeded! If this issue continues to occur, let a staff member know.","color":"red"}]
execute unless score <i> variable matches 10.. run function pandamium:impl/teleport/random/loop_successful

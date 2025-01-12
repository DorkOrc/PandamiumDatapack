# arguments: username

execute if score <target_is_online> variable matches 1 run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" ",extra:[{storage:"pandamium:temp",nbt:"target",interpret:true},{text:" is online! Use take_inventory and take_enderchest instead."}],color:"red"}]

$execute if score $(username) on_join.take_items matches 1 run return run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" ",extra:[{storage:"pandamium:temp",nbt:"target",interpret:true},{text:"'s items are already scheduled to be taken when they join the server!"}],color:"red"}]

$scoreboard players set $(username) on_join.take_items 1

tellraw @s [{text:"[Player Info]",color:"dark_green"},{text:" Scheduled ",extra:[{storage:"pandamium:temp",nbt:"target",interpret:true},{text:"'s items to be taken when they join the server!"}],color:"green"}]

# arguments: username

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:' There is no tracked user with the username "$(username)"!',color:"red"}]
$execute if score $(username) staff_rank matches 2 run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:" ",color:"red",extra:[{text:"$(username)",color:"yellow"},"'s ",{text:"staff",color:"yellow"}," rank is already ",{text:"moderator",color:"yellow"},"!"]}]

$scoreboard players set $(username) staff_rank 2
$deop $(username)
$execute as $(username) run kick @s [User Setup] Your §b[staff]§r rank has been set to §b§l[moderator]§r! You may rejoin when ready.
$tellraw @s [{text:"[admin]",color:"dark_green"},{text:" Set ",color:"green",extra:[{text:"$(username)",color:"aqua"},"'s ",{text:"staff",color:"aqua"}," rank to ",{text:"moderator",color:"aqua"},"!"]}]

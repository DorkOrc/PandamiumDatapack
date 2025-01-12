# arguments: username

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:' There is no tracked user with the username "$(username)"!',color:"red"}]
$execute if score $(username) staff_rank matches 3 run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:" ",color:"red",extra:[{text:"$(username)",color:"yellow"},{text:"'s "},{text:"staff",color:"yellow"},{text:" rank is already "},{text:"senior_moderator",color:"yellow"},{text:"!"}]}]

$scoreboard players set $(username) staff_rank 3
$op $(username)
$execute as $(username) run kick @s [User Setup] Your §b[staff]§r rank has been set to §b§l[senior_moderator]§r! You may rejoin when ready.
$tellraw @s [{text:"[admin]",color:"dark_green"},{text:" Set ",color:"green",extra:[{text:"$(username)",color:"aqua"},{text:"'s "},{text:"staff",color:"aqua"},{text:" rank to "},{text:"senior_moderator",color:"aqua"},{text:"!"}]}]

# arguments: username

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:' There is no tracked user with the username "$(username)"!',color:"red"}]
$execute if score $(username) vip_rank matches 1 run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:" ",color:"red",extra:[{text:"$(username)",color:"yellow"},{text:"'s "},{text:"vip",color:"yellow"},{text:" rank is already "},{text:"true",color:"yellow"},{text:"!"}]}]

$scoreboard players set $(username) vip_rank 1
$execute as $(username) run kick @s [User Setup] Your §b[vip]§r rank has been set to §b§l[true]§r! You may rejoin when ready.
$tellraw @s [{text:"[admin]",color:"dark_green"},{text:" Set ",color:"green",extra:[{text:"$(username)",color:"aqua"},{text:"'s "},{text:"vip",color:"aqua"},{text:" rank to "},{text:"true",color:"aqua"},{text:"!"}]}]

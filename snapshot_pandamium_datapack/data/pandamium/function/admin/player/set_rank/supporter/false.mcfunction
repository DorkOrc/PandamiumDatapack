# arguments: username

function pandamium:utils/get/username
scoreboard players operation <id> variable = @s id
$tellraw @a[scores={send_extra_debug_info=1..},predicate=!pandamium:matches_id] [{color:"gray",italic:true,text:"["},{color:"gray",storage:"pandamium:temp",nbt:"username",interpret:true},': admin player/set_rank/supporter/false {username:"$(username)"}]']

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:' There is no tracked user with the username "$(username)"!',color:"red"}]
$execute unless score $(username) supporter_rank = $(username) supporter_rank run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:" ",color:"red",extra:[{text:"$(username)",color:"yellow"},"'s ",{text:"supporter",color:"yellow"}," rank is already ",{text:"false",color:"yellow"},"!"]}]
$execute if score $(username) supporter_rank matches 0 run return run tellraw @s [{text:"[admin]",color:"dark_red"},{text:" ",color:"red",extra:[{text:"$(username)",color:"yellow"},"'s ",{text:"supporter",color:"yellow"}," rank is already ",{text:"false",color:"yellow"},"!"]}]

$scoreboard players reset $(username) supporter_rank
$execute as $(username) run kick @s [User Setup] Your §b[supporter]§r rank has been set to §b§l[false]§r! You may rejoin when ready.
$tellraw @s [{text:"[admin]",color:"dark_green"},{text:" Set ",color:"green",extra:[{text:"$(username)",color:"aqua"},"'s ",{text:"supporter",color:"aqua"}," rank to ",{text:"false",color:"aqua"},"!"]}]

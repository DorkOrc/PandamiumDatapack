# arguments: username

$execute as $(username) if predicate pandamium:player/supporter_rank/true run kick @s [User Setup] Your §b[supporter]§r rank has been set to §b§l[false]§r! You may rejoin when ready.
$scoreboard players reset $(username) supporter_rank

# arguments: username

$execute as $(username) run scoreboard players set @s supporter_rank 1

$execute as $(username) unless entity @s[tag=had_supporter_rank] run kick @s [User Setup] Your §b[supporter]§r rank has been set to §b§l[true]§r! You may rejoin when ready.

data modify storage pandamium:temp leaderboards.new set value []
data modify storage pandamium:temp leaderboards.old prepend value {value:2147483647,id:-2147483648}

scoreboard players set <placed> variable 0
function pandamium:misc/leaderboards/insert/loop

data remove storage pandamium:temp leaderboards.new[0]
data remove storage pandamium:temp leaderboards.new[15]

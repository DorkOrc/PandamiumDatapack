data modify storage pandamium:temp leaderboards.new set value []
data modify storage pandamium:temp leaderboards.old prepend value {value:2147483647}

execute store result score <bottom_value> variable run data get storage pandamium:temp leaderboards.old[-1].value

scoreboard players set <placed> variable 0
execute if score <self_value> variable > <bottom_value> variable run function pandamium:misc/leaderboards/insert/loop
execute if score <self_value> variable <= <bottom_value> variable run data modify storage pandamium:temp leaderboards.new set from storage pandamium:temp leaderboards.old

data remove storage pandamium:temp leaderboards.new[0]
data remove storage pandamium:temp leaderboards.new[15]

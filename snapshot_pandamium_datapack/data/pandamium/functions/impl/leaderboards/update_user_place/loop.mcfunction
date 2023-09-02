# end early with <index>+1 as the index to insert the entry into IFF the focussed entry's value is greater than or equal to the player's value 
scoreboard players set <entry_value> variable 2147483647
$execute if score <index> variable matches 0.. if data storage pandamium:leaderboards $(type)[$(index)] store result score <entry_value> variable run data get storage pandamium:leaderboards $(type)[$(index)].value
execute if score <entry_value> variable >= <player_value> variable run return run execute store result storage pandamium:templates macro.index__type.index int 1 run scoreboard players add <index> variable 1

#
execute store result storage pandamium:templates macro.index__type.index int 1 run scoreboard players remove <index> variable 1
execute if score <index> variable matches -1.. run function pandamium:impl/leaderboards/update_user_place/loop with storage pandamium:templates macro.index__type

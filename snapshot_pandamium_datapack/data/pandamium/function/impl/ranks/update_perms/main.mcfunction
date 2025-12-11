# staff perms
scoreboard players reset @s staff_perms
execute unless score @s alt_of matches 1.. if score @s staff_rank matches 1.. run scoreboard players operation @s staff_perms = @s staff_rank
execute if score @s alt_of matches 1.. run function pandamium:impl/ranks/update_perms/copy_main_account_perms/main

# gameplay perms
function pandamium:impl/ranks/update_perms/set_gameplay_rank_perms
execute if predicate pandamium:player/min_staff_perms/helper unless score @s gameplay_perms matches 3.. run scoreboard players set @s gameplay_perms 3
execute if predicate pandamium:player/min_staff_perms/moderator run scoreboard players set @s gameplay_perms 6
execute if predicate pandamium:player/has_supporter_perks run scoreboard players set @s gameplay_perms 6
execute if predicate pandamium:player/has_vip_rank run scoreboard players set @s gameplay_perms 6

# home perms
scoreboard players set @s available_homes 2
execute if predicate pandamium:player/min_gameplay_perms/player run scoreboard players set @s available_homes 3
execute if predicate pandamium:player/min_gameplay_perms/member run scoreboard players set @s available_homes 5
execute if predicate pandamium:player/min_gameplay_perms/elder run scoreboard players set @s available_homes 10
execute if predicate pandamium:player/min_gameplay_perms/veteran run scoreboard players set @s available_homes 15
execute if predicate pandamium:player/min_gameplay_perms/elite run scoreboard players set @s available_homes 20
execute if predicate pandamium:player/has_supporter_perks run scoreboard players set @s available_homes 25

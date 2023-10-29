# gameplay perms
function pandamium:impl/ranks/update_perms/set_gameplay_rank_perms
scoreboard players set @s[scores={staff_rank=1,gameplay_perms=..2}] gameplay_perms 3
scoreboard players set @s[scores={staff_rank=2..}] gameplay_perms 6
scoreboard players set @s[scores={donator_rank=1}] gameplay_perms 6
scoreboard players set @s[scores={vip_rank=1}] gameplay_perms 6

# home perms
scoreboard players set @s available_homes 2
scoreboard players set @s[scores={gameplay_perms=1}] available_homes 3
scoreboard players set @s[scores={gameplay_perms=2}] available_homes 5
scoreboard players set @s[scores={gameplay_perms=3}] available_homes 10
scoreboard players set @s[scores={gameplay_perms=4}] available_homes 15
scoreboard players set @s[scores={gameplay_perms=5}] available_homes 20
scoreboard players set @s[scores={gameplay_perms=6}] available_homes 25

# staff perms
scoreboard players set @s staff_perms 0
execute unless score @s alt_of matches 1.. if score @s staff_rank matches 1.. run scoreboard players operation @s staff_perms = @s staff_rank
execute if score @s alt_of matches 1.. run function pandamium:impl/ranks/update_perms/copy_main_account_perms/main

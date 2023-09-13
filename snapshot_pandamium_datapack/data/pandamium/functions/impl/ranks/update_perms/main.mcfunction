# gameplay perms
function pandamium:impl/ranks/update_perms/set_gameplay_rank_perms
scoreboard players set @s[scores={staff_rank=1,gameplay_perms=..2}] gameplay_perms 3
scoreboard players set @s[scores={staff_rank=2..}] gameplay_perms 6
scoreboard players set @s[scores={donator_rank=1}] gameplay_perms 6
scoreboard players set @s[scores={vip_rank=1}] gameplay_perms 6

# staff perms
scoreboard players set @s staff_perms 0
scoreboard players set @s is_staff_alt 0
execute unless score @s alt_of matches 1.. if score @s staff_rank matches 1.. run scoreboard players operation @s staff_perms = @s staff_rank
execute if score @s alt_of matches 1.. run function pandamium:impl/ranks/update_perms/copy_main_account_perms/main

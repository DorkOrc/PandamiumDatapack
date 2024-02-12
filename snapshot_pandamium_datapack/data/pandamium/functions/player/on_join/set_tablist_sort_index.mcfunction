execute if score @s staff_rank matches 5.. unless score @s alt_of matches 1.. run return run scoreboard players set @s tablist_sort_index 100
execute if score @s staff_rank matches 4 unless score @s alt_of matches 1.. run return run scoreboard players set @s tablist_sort_index 101
execute if score @s staff_rank matches 3 unless score @s alt_of matches 1.. run return run scoreboard players set @s tablist_sort_index 102
execute if score @s staff_rank matches 2 unless score @s alt_of matches 1.. run return run scoreboard players set @s tablist_sort_index 103
execute if score @s staff_rank matches 1 unless score @s alt_of matches 1.. run return run scoreboard players set @s tablist_sort_index 104
execute if score @s vip_rank matches 1 run return run scoreboard players set @s tablist_sort_index 106
execute if score @s donator_rank matches 1 unless score @s disable_donator_prefix matches 1 run return run scoreboard players set @s tablist_sort_index 105
execute if score @s gameplay_perms matches 5 run return run scoreboard players set @s tablist_sort_index 107
execute if score @s gameplay_perms matches 4 run return run scoreboard players set @s tablist_sort_index 108
execute if score @s gameplay_perms matches 3 run return run scoreboard players set @s tablist_sort_index 109
execute if score @s gameplay_perms matches 2 run return run scoreboard players set @s tablist_sort_index 110
execute if score @s gameplay_perms matches 1 run return run scoreboard players set @s tablist_sort_index 111
execute if score @s gameplay_perms matches 0 run return run scoreboard players set @s tablist_sort_index 112

# else
return run scoreboard players set @s tablist_sort_index 199

team leave @s
execute if score @s donator_rank matches 1 unless score @s disable_donator_prefix matches 1 run team join donator_afk @s
execute if score @s vip_rank matches 1 run team join vip_afk @s
execute if score @s staff_rank matches 1.. unless score @s is_staff_alt matches 1.. run function pandamium:misc/ranks/update_team/afk/join_staff_team
execute if entity @s[team=] run function pandamium:misc/ranks/update_team/afk/join_gameplay_team

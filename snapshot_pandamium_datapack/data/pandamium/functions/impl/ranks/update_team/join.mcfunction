team leave @s
$execute if score @s donator_rank matches 1 unless score @s disable_donator_prefix matches 1 run team join donator$(suffix) @s
$execute if score @s vip_rank matches 1 run team join vip$(suffix) @s
$execute if score @s staff_rank matches 1.. unless score @s is_staff_alt matches 1.. run function pandamium:impl/ranks/update_team/join_staff {suffix: "$(suffix)"}
$execute if entity @s[team=] run function pandamium:impl/ranks/update_team/join_gameplay {suffix: "$(suffix)"}
scoreboard players set <joined_team> variable 1

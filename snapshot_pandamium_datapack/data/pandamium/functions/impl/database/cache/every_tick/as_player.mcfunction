# arguments: username, id

scoreboard players set <player_exists> variable 1

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/loop_triggers

# tpa trigger
$scoreboard players set @a[scores={tpa_$(username)=1..}] tpa $(id)
$scoreboard players set @a tpa_$(username) 0
$scoreboard players enable @a tpa_$(username)
$scoreboard players reset @s tpa_$(username)

execute unless entity @a[scores={staff_perms=1..},limit=1] run return 0
# kick trigger
$scoreboard players set @a[scores={kick_$(username)=1..}] kick $(id)
$scoreboard players set @a[scores={staff_perms=1..}] kick_$(username) 0
$scoreboard players enable @a[scores={staff_perms=1..}] kick_$(username)

# ban trigger
$scoreboard players set @a[scores={ban_$(username)=1..}] ban $(id)
$scoreboard players set @a[scores={staff_perms=2..}] ban_$(username) 0
$scoreboard players enable @a[scores={staff_perms=2..}] ban_$(username)

# jail trigger
$scoreboard players set @a[scores={jail_$(username)=1..}] jail $(id)
$execute unless score @s jailed matches 1.. run scoreboard players set @a[scores={staff_perms=1..}] jail_$(username) 0
$execute unless score @s jailed matches 1.. run scoreboard players enable @a[scores={staff_perms=1..}] jail_$(username)
$execute if score @s jailed matches 1.. run scoreboard players reset @a[scores={jail_$(username)=-2147483648..}] jail_$(username)

# unjail trigger
$scoreboard players set @a[scores={unjail_$(username)=1..}] unjail $(id)
$execute if score @s jailed matches 1.. run scoreboard players set @a[scores={staff_perms=1..}] unjail_$(username) 0
$execute if score @s jailed matches 1.. run scoreboard players enable @a[scores={staff_perms=1..}] unjail_$(username)
$execute unless score @s jailed matches 1.. run scoreboard players reset @a[scores={unjail_$(username)=-2147483648..}] unjail_$(username)

# player_info trigger
$scoreboard players set @a[scores={player_info_$(username)=1..}] player_info_v2 $(id)
$scoreboard players set @a[scores={staff_perms=1..}] player_info_$(username) 0
$scoreboard players enable @a[scores={staff_perms=1..}] player_info_$(username)

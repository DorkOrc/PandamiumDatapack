# arguments: username, id

scoreboard players set <player_exists> variable 1

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/loop_triggers

# tpa trigger
$scoreboard players set @a[scores={tpa.$(username)=1..}] tpa $(id)
$scoreboard players set @a tpa.$(username) 0
$scoreboard players enable @a[scores={optn.disable_dynamic_triggers.tpa_names=0}] tpa.$(username)
$scoreboard players reset @s tpa.$(username)

execute unless entity @a[scores={staff_perms=1..},limit=1] run return 0
# kick trigger
$scoreboard players set @a[scores={kick.$(username)=1..}] kick $(id)
$scoreboard players set @a[scores={staff_perms=1..}] kick.$(username) 0
$scoreboard players enable @a[scores={staff_perms=1..,optn.disable_dynamic_triggers.staff=0}] kick.$(username)

# ban trigger
$scoreboard players set @a[scores={ban.$(username)=1..}] ban $(id)
$scoreboard players set @a[scores={staff_perms=2..}] ban.$(username) 0
$scoreboard players enable @a[scores={staff_perms=2..}] ban.$(username)

# jail trigger
$scoreboard players set @a[scores={jail.$(username)=1..}] jail $(id)
$execute unless score @s jailed matches 1.. run scoreboard players set @a[scores={staff_perms=1..}] jail.$(username) 0
$execute unless score @s jailed matches 1.. run scoreboard players enable @a[scores={staff_perms=1..,optn.disable_dynamic_triggers.staff=0}] jail.$(username)
$execute if score @s jailed matches 1.. run scoreboard players reset @a[scores={jail.$(username)=-2147483648..}] jail.$(username)

# unjail trigger
$scoreboard players set @a[scores={unjail.$(username)=1..}] unjail $(id)
$execute if score @s jailed matches 1.. run scoreboard players set @a[scores={staff_perms=1..}] unjail.$(username) 0
$execute if score @s jailed matches 1.. run scoreboard players enable @a[scores={staff_perms=1..,optn.disable_dynamic_triggers.staff=0}] unjail.$(username)
$execute unless score @s jailed matches 1.. run scoreboard players reset @a[scores={unjail.$(username)=-2147483648..}] unjail.$(username)

# player_info trigger
$scoreboard players set @a[scores={player_info.$(username)=1..}] player_info_v2 $(id)
$scoreboard players set @a[scores={staff_perms=1..,optn.disable_dynamic_triggers.staff=0}] player_info.$(username) 0
$scoreboard players enable @a[scores={staff_perms=1..}] player_info.$(username)

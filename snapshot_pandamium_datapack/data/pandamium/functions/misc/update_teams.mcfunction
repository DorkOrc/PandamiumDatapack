execute if entity @s[team=donator] unless score @s donator matches 1 run team leave @s

execute if entity @s[team=] run team join guest
execute if entity @s[team=guest] if score @s votes matches 5.. if score @s playtime_ticks matches 360000.. run team join player
execute if entity @s[team=player] if score @s votes matches 25.. if score @s playtime_ticks matches 1800000.. run team join member
execute if entity @s[team=member] if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run team join elder
execute if entity @s[team=elder] if score @s votes matches 500.. if score @s playtime_ticks matches 36000000.. run team join veteran
execute if entity @s[team=veteran] if score @s votes matches 2500.. if score @s playtime_ticks matches 180000000.. run team join elite

# Staff Perms
execute unless score @s staff_alt matches 1 run scoreboard players set @s staff_perms 0
scoreboard players set @s[team=helper] staff_perms 1
scoreboard players set @s[team=mod] staff_perms 2
scoreboard players set @s[team=srmod] staff_perms 3
scoreboard players set @s[team=admin] staff_perms 4
scoreboard players set @s[team=owner] staff_perms 5

execute unless entity @s[team=!helper,team=!mod,team=!srmod,team=!admin,team=!owner] if score @s staff_alt matches 1 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Your [staff_alt] score has been reset, as it is incompatible with your team!"}]
execute unless entity @s[team=!helper,team=!mod,team=!srmod,team=!admin,team=!owner] if score @s staff_alt matches 1 run scoreboard players reset @s staff_alt

# Gameplay Perms
scoreboard players set @s gameplay_perms 0
scoreboard players set @s[team=player] gameplay_perms 1
scoreboard players set @s[team=member] gameplay_perms 2
scoreboard players set @s[team=elder] gameplay_perms 3
scoreboard players set @s[team=veteran] gameplay_perms 4
execute unless entity @s[team=!elite,team=!helper] run scoreboard players set @s gameplay_perms 5

scoreboard players set @s[team=vip] gameplay_perms 6
scoreboard players set @s[scores={donator=1}] gameplay_perms 6
execute if score @s staff_perms matches 2.. unless score @s staff_alt matches 1 run scoreboard players set @s gameplay_perms 6

scoreboard players set @s[scores={staff_alt=1,gameplay_perms=..2}] gameplay_perms 3

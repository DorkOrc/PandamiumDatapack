execute if entity @s[team=] run team join guest
execute if entity @s[team=guest] if score @s votes matches 5.. if score @s playtime_ticks matches 360000.. run team join player
execute if entity @s[team=player] if score @s votes matches 25.. if score @s playtime_ticks matches 1800000.. run team join member
execute if entity @s[team=member] if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run team join elder
execute if entity @s[team=elder] if score @s votes matches 500.. if score @s playtime_ticks matches 36000000.. run team join veteran
execute if entity @s[team=elder+] if score @s votes matches 500.. if score @s playtime_ticks matches 36000000.. run team join veteran+
execute if entity @s[team=veteran] if score @s votes matches 2500.. if score @s playtime_ticks matches 180000000.. run team join elite
execute if entity @s[team=veteran+] if score @s votes matches 2500.. if score @s playtime_ticks matches 180000000.. run team join elite+

scoreboard players reset @s gameplay_perms
scoreboard players set @s[team=player] gameplay_perms 1
scoreboard players set @s[team=member] gameplay_perms 2
scoreboard players set @s[team=elder] gameplay_perms 3
scoreboard players set @s[team=veteran] gameplay_perms 4
execute unless entity @s[team=!elite,team=!helper] run scoreboard players set @s gameplay_perms 5
execute unless entity @s[team=!donator,team=!elder+,team=!veteran+,team=!elite+,team=!vip,team=!helper+,team=!mod,team=!srmod,team=!admin,team=!owner] run scoreboard players set @s gameplay_perms 6

execute unless score @s lock_staff_perms matches 1 run scoreboard players reset @s staff_perms
execute unless entity @s[team=!helper,team=!helper+] run scoreboard players set @s staff_perms 1
scoreboard players set @s[team=mod] staff_perms 2
scoreboard players set @s[team=srmod] staff_perms 3
scoreboard players set @s[team=admin] staff_perms 4
scoreboard players set @s[team=owner] staff_perms 5

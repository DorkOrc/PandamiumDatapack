execute if entity @s[team=] run team join guest
execute if entity @s[team=guest] if score @s votes matches 5.. if score @s playtime_ticks matches 360000.. run team join player
execute if entity @s[team=player] if score @s votes matches 25.. if score @s playtime_ticks matches 1800000.. run team join member
execute if entity @s[team=member] if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run team join elder
execute if entity @s[team=elder] if score @s votes matches 500.. if score @s playtime_ticks matches 36000000.. run team join veteran

scoreboard players reset @s gameplay_perms
scoreboard players set @s[team=player] gameplay_perms 1
scoreboard players set @s[team=member] gameplay_perms 2
scoreboard players set @s[team=elder] gameplay_perms 3
scoreboard players set @s[team=elder+] gameplay_perms 5
scoreboard players set @s[team=veteran] gameplay_perms 4
scoreboard players set @s[team=veteran+] gameplay_perms 5
scoreboard players set @s[team=donator] gameplay_perms 5
scoreboard players set @s[team=vip] gameplay_perms 5
scoreboard players set @s[team=helper] gameplay_perms 4
scoreboard players set @s[team=helper+] gameplay_perms 5

scoreboard players reset @s staff_perms
scoreboard players set @s[team=helper] staff_perms 1
scoreboard players set @s[team=helper+] staff_perms 1
scoreboard players set @s[team=mod] staff_perms 2
scoreboard players set @s[team=srmod] staff_perms 3
scoreboard players set @s[team=admin] staff_perms 4
scoreboard players set @s[team=owner] staff_perms 5

scoreboard players set @s[scores={staff_perms=2..}] gameplay_perms 5

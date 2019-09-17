execute if entity @s[team=] run team join guest @s
execute if entity @s[team=guest] if score @s votes matches 5.. run team join player @s
execute if entity @s[team=player] if score @s votes matches 25.. run team join member @s
execute if entity @s[team=member] if score @s votes matches 125.. run team join elder @s
execute if entity @s[team=elder] if score @s votes matches 500.. run team join veteran @s

scoreboard players set @s[team=donator] gameplay_perms 1
scoreboard players set @s[team=helper+] gameplay_perms 1
scoreboard players set @s[team=mod+] gameplay_perms 1
scoreboard players set @s[team=srmod+] gameplay_perms 1
scoreboard players set @s[team=owner] gameplay_perms 1

scoreboard players set @s[team=helper] staff_perms 1
scoreboard players set @s[team=helper+] staff_perms 1
scoreboard players set @s[team=mod] staff_perms 2
scoreboard players set @s[team=mod+] staff_perms 2
scoreboard players set @s[team=srmod] staff_perms 2
scoreboard players set @s[team=srmod+] staff_perms 2
scoreboard players set @s[team=owner] staff_perms 2
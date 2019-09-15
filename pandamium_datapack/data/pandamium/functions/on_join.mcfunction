execute as @s run function pandamium:update_teams

scoreboard players enable @s spawn
scoreboard players enable @s vote
scoreboard players enable @s home
scoreboard players enable @s sethome
scoreboard players enable @s check_cooldown

scoreboard players set @s leave_count 0

scoreboard players set @s gameplay_perms 0
scoreboard players set @s[team=donator] gameplay_perms 1
scoreboard players set @s[team=helper+] gameplay_perms 1
scoreboard players set @s[team=mod+] gameplay_perms 1
scoreboard players set @s[team=srmod+] gameplay_perms 1
scoreboard players set @s[team=owner] gameplay_perms 1

scoreboard players reset @s[scores={gameplay_perms=1}] home_cooldown
tag @s remove target
execute unless score @a[tag=source,limit=1] is_staff_alt matches 1 run ban @s[type=player] You were banned by @a[tag=source,limit=1]! If you think this is a mistake or would like to appeal, contact a member of staff at our discord server: §b§ldiscord.pandamium.eu§r
execute if score @a[tag=source,limit=1] is_staff_alt matches 1 run ban @s[type=player] You were banned by a staff member! If you think this is a mistake or would like to appeal, contact a member of staff at our discord server: §b§ldiscord.pandamium.eu§r

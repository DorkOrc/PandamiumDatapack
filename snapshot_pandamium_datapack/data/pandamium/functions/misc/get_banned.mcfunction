tag @s remove selected_player
execute unless score @p[tag=running_trigger] staff_alt matches 1.. run ban @s[type=player] You were banned by @p[tag=running_trigger]! If you think this is a mistake or would like to appeal, contact a member of staff at our discord server: §b§ldiscord.pandamium.eu§r
execute if score @p[tag=running_trigger] staff_alt matches 1.. run ban @s[type=player] You were banned by a staff member! If you think this is a mistake or would like to appeal, contact a member of staff at our discord server: §b§ldiscord.pandamium.eu§r

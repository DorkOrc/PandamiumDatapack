tag @s remove target
execute unless score @p[tag=source] staff_alt matches 1.. run kick @s[type=player] You were kicked by @p[tag=source]!
execute if score @p[tag=source] staff_alt matches 1.. run kick @s[type=player] You were kicked by a staff member!

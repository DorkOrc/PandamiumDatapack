tag @s remove target
execute unless score @a[tag=source,limit=1] is_staff_alt matches 1 run kick @s[type=player] You were kicked by @a[tag=source,limit=1]!
execute if score @a[tag=source,limit=1] is_staff_alt matches 1 run kick @s[type=player] You were kicked by a staff member!

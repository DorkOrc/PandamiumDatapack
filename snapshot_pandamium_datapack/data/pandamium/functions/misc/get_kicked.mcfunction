tag @s remove selected_player
execute unless score @p[tag=running_trigger] staff_alt matches 1.. run kick @s[type=player] You were kicked by @p[tag=running_trigger]!
execute if score @p[tag=running_trigger] staff_alt matches 1.. run kick @s[type=player] You were kicked by a staff member!

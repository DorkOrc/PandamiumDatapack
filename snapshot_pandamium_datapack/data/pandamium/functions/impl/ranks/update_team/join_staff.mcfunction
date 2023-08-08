$execute if score @s staff_rank matches 1 run return run team join helper$(suffix) @s
$execute if score @s staff_rank matches 2 run return run team join mod$(suffix) @s
$execute if score @s staff_rank matches 3 run return run team join srmod$(suffix) @s
$execute if score @s staff_rank matches 4 run return run team join admin$(suffix) @s
$execute if score @s staff_rank matches 5 run return run team join owner$(suffix) @s

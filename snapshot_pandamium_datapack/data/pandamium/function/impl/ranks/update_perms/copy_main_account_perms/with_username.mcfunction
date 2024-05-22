# arguments: username

$execute if score $(username) staff_rank matches 1.. run scoreboard players operation @s staff_perms = $(username) staff_rank

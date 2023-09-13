# arguments: username

$execute if score $(username) staff_rank matches 1.. run scoreboard players operation @s staff_perms = $(username) staff_rank
$execute if score $(username) staff_rank matches 1.. run scoreboard players set @s is_staff_alt 1

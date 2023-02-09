scoreboard players set <can_access_home> variable 0
execute if score <home> variable matches 1 run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 2 if score @s gameplay_perms matches 1.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 3 if score @s gameplay_perms matches 2.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 4 if score @s gameplay_perms matches 3.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 5 if score @s gameplay_perms matches 4.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 6..7 if score @s gameplay_perms matches 5.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 8..10 if score @s gameplay_perms matches 6.. run scoreboard players set <can_access_home> variable 1

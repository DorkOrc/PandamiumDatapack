scoreboard players set <phantoms> variable 1
execute if predicate pandamium:random_50 run scoreboard players add <phantoms> variable 1
execute if predicate pandamium:random_50 run scoreboard players add <phantoms> variable 2

execute store result score <y> variable run data get entity @s Pos[1]
execute if score <y> variable matches ..63 run scoreboard players set <phantoms> variable 0

execute if score <phantoms> variable matches 1.. if block ^ ^ ^5 air run summon phantom ^ ^ ^5
execute if score <phantoms> variable matches 1.. unless block ^ ^ ^5 air run summon phantom
execute if score <phantoms> variable matches 2.. if block ^ ^ ^-5 air run summon phantom ^ ^ ^-5
execute if score <phantoms> variable matches 3.. if block ^5 ^ ^ air run summon phantom ^5 ^ ^
execute if score <phantoms> variable matches 4.. if block ^-5 ^ ^ air run summon phantom ^-5 ^ ^

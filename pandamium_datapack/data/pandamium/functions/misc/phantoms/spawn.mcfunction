scoreboard players set <phantoms> temp 1
execute if predicate pandamium:coin_flip run scoreboard players add <phantoms> temp 1
execute if predicate pandamium:coin_flip run scoreboard players add <phantoms> temp 2

execute store result score <y> temp run data get entity @s Pos[1]
execute if score <y> temp matches ..63 run scoreboard players set <phantoms> temp 0

execute if score <phantoms> temp matches 1.. if block ^ ^ ^5 air run summon phantom ^ ^ ^5
execute if score <phantoms> temp matches 1.. unless block ^ ^ ^5 air run summon phantom
execute if score <phantoms> temp matches 2.. if block ^ ^ ^-5 air run summon phantom ^ ^ ^-5
execute if score <phantoms> temp matches 3.. if block ^5 ^ ^ air run summon phantom ^5 ^ ^
execute if score <phantoms> temp matches 4.. if block ^-5 ^ ^ air run summon phantom ^-5 ^ ^

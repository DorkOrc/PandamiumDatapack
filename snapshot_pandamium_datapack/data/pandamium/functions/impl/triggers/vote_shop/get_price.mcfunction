scoreboard players operation <reference_value> variable = @s vote_shop
execute if score <section> variable matches -20..-11 run scoreboard players add <reference_value> variable 1000

scoreboard players set <valid_option> variable 1

scoreboard players reset <cost> variable
scoreboard players set <buying_mini_block> variable 0

execute if score <reference_value> variable matches -1 run scoreboard players set <cost> variable 3
execute if score <reference_value> variable matches -2 run scoreboard players set <cost> variable 1
execute if score <reference_value> variable matches -3 run scoreboard players set <cost> variable 1
execute if score <reference_value> variable matches -4 run scoreboard players set <cost> variable 1
execute if score <reference_value> variable matches -5 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -6 run scoreboard players set <cost> variable 50
execute if score <reference_value> variable matches -7 run scoreboard players set <cost> variable 8
execute if score <reference_value> variable matches -8 run scoreboard players set <buying_mini_block> variable 1
execute if score <reference_value> variable matches -9 run scoreboard players set <cost> variable 20
execute if score <reference_value> variable matches -10 run scoreboard players set <cost> variable 100
execute if score <reference_value> variable matches -11 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -12 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -13 run scoreboard players set <cost> variable 1
execute if score <reference_value> variable matches -14 run scoreboard players set <cost> variable 20
execute if score <reference_value> variable matches -15 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -16 run scoreboard players set <cost> variable 30
execute if score <reference_value> variable matches -17 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -18 run scoreboard players set <cost> variable 20
execute if score <reference_value> variable matches -19 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -20 run scoreboard players set <cost> variable 1
execute if score <reference_value> variable matches -21 run scoreboard players set <cost> variable 30
execute if score <reference_value> variable matches -50 run scoreboard players set <cost> variable 1

execute if score <section> variable matches -3..-2 run scoreboard players set <buying_mini_block> variable 1
execute if score <section> variable matches -200..-101 run scoreboard players set <buying_mini_block> variable 1
execute if score <section> variable matches ..-201 run scoreboard players set <buying_mini_block> variable 1

execute if score <buying_mini_block> variable matches 1 run scoreboard players set <cost> variable 3

execute unless score <cost> variable = <cost> variable run scoreboard players set <valid_option> variable 0

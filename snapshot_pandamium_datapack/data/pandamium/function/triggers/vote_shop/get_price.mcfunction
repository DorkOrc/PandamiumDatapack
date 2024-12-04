scoreboard players operation <reference_value> variable = @s rewards_shop
execute if score <section> variable matches -20..-11 run scoreboard players add <reference_value> variable 1000

scoreboard players set <valid_option> variable 1

scoreboard players reset <cost> variable

execute if score <reference_value> variable matches -1 run scoreboard players set <cost> variable 3
execute if score <reference_value> variable matches -2 run scoreboard players set <cost> variable 1
execute if score <reference_value> variable matches -3 run scoreboard players set <cost> variable 1
execute if score <reference_value> variable matches -4 run scoreboard players set <cost> variable 2
execute if score <reference_value> variable matches -5 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -6 run scoreboard players set <cost> variable 50
execute if score <reference_value> variable matches -7 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -8 run scoreboard players set <cost> variable 2
execute if score <reference_value> variable matches -9 run scoreboard players set <cost> variable 15
execute if score <reference_value> variable matches -10 run scoreboard players set <cost> variable 60
execute if score <reference_value> variable matches -11 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -12 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -13 run scoreboard players set <cost> variable 20
execute if score <reference_value> variable matches -14 run scoreboard players set <cost> variable 20
execute if score <reference_value> variable matches -15 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -16 run scoreboard players set <cost> variable 30
execute if score <reference_value> variable matches -17 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -21 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -22 run scoreboard players set <cost> variable 6
execute if score <reference_value> variable matches -23 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -24 run scoreboard players set <cost> variable 25
execute if score <reference_value> variable matches -25 run scoreboard players set <cost> variable 5
execute if score <reference_value> variable matches -26 run scoreboard players set <cost> variable 3
execute if score <reference_value> variable matches -27 run scoreboard players set <cost> variable 12
execute if score <reference_value> variable matches -28 run scoreboard players set <cost> variable 25
#execute if score <reference_value> variable matches -29 run scoreboard players set <cost> variable 20
execute if score <reference_value> variable matches -30 run scoreboard players set <cost> variable 75
execute if score <reference_value> variable matches -31 run scoreboard players set <cost> variable 15
execute if score <reference_value> variable matches -32 run scoreboard players set <cost> variable 10
execute if score <reference_value> variable matches -33 run scoreboard players set <cost> variable 6
execute if score <reference_value> variable matches -34 run scoreboard players set <cost> variable 3
execute if score <reference_value> variable matches -35 run scoreboard players set <cost> variable 75
execute if score <reference_value> variable matches -36 run scoreboard players set <cost> variable 120
execute if score <reference_value> variable matches -37 run scoreboard players set <cost> variable 150

execute if score <reference_value> variable matches -50 run scoreboard players set <cost> variable 1

execute unless score <cost> variable = <cost> variable run scoreboard players set <valid_option> variable 0

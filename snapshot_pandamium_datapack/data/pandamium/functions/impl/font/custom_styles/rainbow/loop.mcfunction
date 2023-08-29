scoreboard players operation <range> variable = <index> variable
scoreboard players operation <range> variable *= #500 constant
execute store result score <rise> variable run scoreboard players operation <range> variable /= <max_index> variable
scoreboard players operation <rise> variable %= #100 constant
scoreboard players operation <rise> variable *= #255 constant
execute store result score <fall> variable run scoreboard players operation <rise> variable /= #100 constant
scoreboard players operation <fall> variable *= #-1 constant
scoreboard players add <fall> variable 255

#
scoreboard players set <red> variable 255
execute if score <range> variable matches 100..199 run scoreboard players operation <red> variable = <fall> variable
execute if score <range> variable matches 200..399 run scoreboard players set <red> variable 0
execute if score <range> variable matches 400..499 run scoreboard players operation <red> variable = <rise> variable

scoreboard players set <green> variable 0
execute if score <range> variable matches 0..99 run scoreboard players operation <green> variable = <rise> variable
execute if score <range> variable matches 100..299 run scoreboard players set <green> variable 255
execute if score <range> variable matches 300..399 run scoreboard players operation <green> variable = <fall> variable

scoreboard players set <blue> variable 0
execute if score <range> variable matches 200..299 run scoreboard players operation <blue> variable = <rise> variable
execute if score <range> variable matches 300..500 run scoreboard players set <blue> variable 255

#
execute store result storage pandamium:templates macro.red__green__blue.red int 1 run scoreboard players get <red> variable
execute store result storage pandamium:templates macro.red__green__blue.green int 1 run scoreboard players get <green> variable
execute store result storage pandamium:templates macro.red__green__blue.blue int 1 run scoreboard players get <blue> variable

function pandamium:impl/font/custom_styles/gradient/get_colour/main with storage pandamium:templates macro.red__green__blue

data remove storage pandamium:text characters[0]
scoreboard players add <index> variable 1
execute if data storage pandamium:text characters[0] run function pandamium:impl/font/custom_styles/rainbow/loop

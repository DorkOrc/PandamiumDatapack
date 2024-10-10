execute unless score <parkour.course_4.animation.big_giggle.frame> global matches 0.. run scoreboard players set <parkour.course_4.animation.big_giggle.frame> global 0

execute if score <parkour.course_4.animation.big_giggle.frame> global matches 0 positioned -374.5 77.07 234.5 run playsound minecraft:entity.witch.celebrate master @a[distance=..20] ~ ~ ~ 2 0
execute if score <parkour.course_4.animation.big_giggle.frame> global matches 4 positioned -374.5 77.07 234.5 run playsound minecraft:entity.witch.celebrate master @a[distance=..20] ~ ~ ~ 2 0

execute if score <parkour.course_4.animation.big_giggle.frame> global matches 0 run place template pandamium:jack_o_giggle_jaw -369 70 227
execute if score <parkour.course_4.animation.big_giggle.frame> global matches 1 run place template pandamium:jack_o_giggle_jaw -369 71 227

execute if score <parkour.course_4.animation.big_giggle.frame> global matches 2 run place template pandamium:jack_o_giggle_jaw -369 70 227
execute if score <parkour.course_4.animation.big_giggle.frame> global matches 3 run place template pandamium:jack_o_giggle_jaw -369 71 227

execute if score <parkour.course_4.animation.big_giggle.frame> global matches 4 run place template pandamium:jack_o_giggle_jaw -369 70 227
execute if score <parkour.course_4.animation.big_giggle.frame> global matches 5 run place template pandamium:jack_o_giggle_jaw -369 71 227

execute if score <parkour.course_4.animation.big_giggle.frame> global matches 6 run place template pandamium:jack_o_giggle_jaw -369 70 227
execute if score <parkour.course_4.animation.big_giggle.frame> global matches 7 run place template pandamium:jack_o_giggle_jaw -369 71 227

scoreboard players add <parkour.course_4.animation.big_giggle.frame> global 1
execute if score <parkour.course_4.animation.big_giggle.frame> global matches 0..7 run return run schedule function pandamium:impl/parkour/parkour_4/animation/big_giggle/scheduled 10t
scoreboard players reset <parkour.course_4.animation.big_giggle.frame> global

execute store result score <initial_roll> variable store result score <final_roll> variable run random value 0..3

# re-roll if the player already has that potion on them
execute if score <initial_roll> variable matches 0 if items entity @s container.* *[potion_contents~wind_charged] store result score <final_roll> variable run random value 1..3
execute if score <initial_roll> variable matches 1 if items entity @s container.* *[potion_contents~weaving] store result score <final_roll> variable run random value 1..3
execute if score <initial_roll> variable matches 1 if items entity @s container.* *[potion_contents~weaving] if score <final_roll> variable matches 1 run scoreboard players set <final_roll> variable 0
execute if score <initial_roll> variable matches 2 if items entity @s container.* *[potion_contents~oozing] store result score <final_roll> variable run random value 0..2
execute if score <initial_roll> variable matches 2 if items entity @s container.* *[potion_contents~oozing] if score <final_roll> variable matches 2 run scoreboard players set <final_roll> variable 3
execute if score <initial_roll> variable matches 3 if items entity @s container.* *[potion_contents~infested] store result score <final_roll> variable run random value 0..2

# give potion
execute if score <final_roll> variable matches 0 run return run give @s potion[potion_contents=wind_charged]
execute if score <final_roll> variable matches 1 run return run give @s potion[potion_contents=weaving]
execute if score <final_roll> variable matches 2 run return run give @s potion[potion_contents=oozing]
execute if score <final_roll> variable matches 3 run return run give @s potion[potion_contents=infested]

return 0

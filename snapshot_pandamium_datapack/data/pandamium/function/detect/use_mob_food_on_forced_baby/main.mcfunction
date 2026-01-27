advancement revoke @s only pandamium:detect/use_mob_food_on_forced_baby

title @s actionbar {color:"red",text:"This mob cannot be aged up"}
execute as @e[distance=..20,predicate=pandamium:entity/forced_baby] run data merge entity @s {Age:-2147483648,ForcedAge:0}

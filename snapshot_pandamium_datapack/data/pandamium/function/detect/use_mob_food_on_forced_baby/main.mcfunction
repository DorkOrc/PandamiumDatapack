advancement revoke @s only pandamium:detect/use_mob_food_on_forced_baby

execute as @e[distance=..20,predicate=pandamium:entity/forced_baby] run data merge entity @s {AgeLocked:true,Age:-2147483648,ForcedAge:0}

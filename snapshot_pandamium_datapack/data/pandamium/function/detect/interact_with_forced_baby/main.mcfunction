advancement revoke @s only pandamium:detect/interact_with_forced_baby

execute as @e[distance=..20,predicate=pandamium:entity/forced_baby] run data merge entity @s {Age:-2147483648,ForcedAge:0}

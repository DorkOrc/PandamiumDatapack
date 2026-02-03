advancement revoke @s only pandamium:detect/interact_with_forced_baby

execute as @e[distance=..20,predicate=pandamium:entity/is_forced_baby] run data merge entity @s {AgeLocked:true,Age:-2147483648}
execute if dimension pandamium:hub as @e[distance=..20,predicate=pandamium:entity/is_baby_or_tadpole,predicate=!pandamium:entity/is_forced_baby] run data merge entity @s {AgeLocked:true,Age:-2147483648,data:{forced_baby:{}}}

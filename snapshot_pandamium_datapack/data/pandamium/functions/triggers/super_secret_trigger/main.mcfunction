execute store result storage pandamium:templates macro.value.value int 0.1 run random value 6..35
function pandamium:triggers/super_secret_trigger/set_scale with storage pandamium:templates macro.value

scoreboard players reset @s super_secret_trigger
scoreboard players enable @s super_secret_trigger

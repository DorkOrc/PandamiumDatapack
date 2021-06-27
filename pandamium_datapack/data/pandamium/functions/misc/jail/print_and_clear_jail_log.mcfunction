tellraw @s [{"text":" ","color":"gold"},{"nbt":"auto_jails[0].user","storage":"pandamium:jail","interpret":true}," was jailed on ",[{"nbt":"auto_jails[0].day","storage":"pandamium:jail","color":"yellow"},"/",{"nbt":"auto_jails[0].month","storage":"pandamium:jail"},"/",{"nbt":"auto_jails[0].year","storage":"pandamium:jail"}]," at ≈ ",[{"nbt":"auto_jails[0].hour","storage":"pandamium:jail","color":"yellow"},"hrs UTC"]," for ",{"nbt":"auto_jails[0].reason","storage":"pandamium:jail","color":"yellow"},"."]

data remove storage pandamium:jail auto_jails[0]
execute if data storage pandamium:jail auto_jails[0] run function pandamium:misc/jail/print_and_clear_jail_log

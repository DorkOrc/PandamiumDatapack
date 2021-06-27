tag @s add getting_logged

execute in pandamium:staff_world run setblock 0 0 0 air
execute in pandamium:staff_world run setblock 0 0 0 oak_sign{Text1:'{"selector":"@p[tag=getting_logged]"}'}

data modify storage pandamium:jail auto_jails append value {}
execute in pandamium:staff_world run data modify storage pandamium:jail auto_jails[-1].user set from block 0 0 0 Text1
execute in pandamium:staff_world run data modify storage pandamium:jail auto_jails[-1].reason set from storage pandamium:jail reason
execute store result storage pandamium:jail auto_jails[-1].day int 1 run scoreboard players get <day> variable
execute store result storage pandamium:jail auto_jails[-1].month int 1 run scoreboard players get <month> variable
execute store result storage pandamium:jail auto_jails[-1].year int 1 run scoreboard players get <year> variable
execute store result storage pandamium:jail auto_jails[-1].hour int 1 run scoreboard players get <hour> variable

tag @s remove getting_logged

# new entry
data modify storage pandamium:jail auto_jails append value {index:0,clickEvent:'""',username:'n/a',date:[I;0,0,0,0],reason:'none',pre_jail_pos:[I;0,0,0,0]}

# fill in new entry's data
execute store result storage pandamium:jail auto_jails[-1].index int 1 run scoreboard players get <next_auto_jail_log_index> variable
function pandamium:misc/jail/get_click_event

function pandamium:misc/get_username
data modify storage pandamium:jail auto_jails[-1].username set from storage pandamium:temp username

execute store result storage pandamium:jail auto_jails[-1].date[0] int 1 run scoreboard players get <year> variable
execute store result storage pandamium:jail auto_jails[-1].date[1] int 1 run scoreboard players get <month> variable
execute store result storage pandamium:jail auto_jails[-1].date[2] int 1 run scoreboard players get <day> variable
execute store result storage pandamium:jail auto_jails[-1].date[3] int 1 run scoreboard players get <hour> variable

execute store result storage pandamium:jail auto_jails[-1].pre_jail_pos[0] int 1 run scoreboard players get @s pre_jail_pos_x
execute store result storage pandamium:jail auto_jails[-1].pre_jail_pos[1] int 1 run scoreboard players get @s pre_jail_pos_y
execute store result storage pandamium:jail auto_jails[-1].pre_jail_pos[2] int 1 run scoreboard players get @s pre_jail_pos_z
execute store result storage pandamium:jail auto_jails[-1].pre_jail_pos[3] int 1 run scoreboard players get @s pre_jail_pos_d

data modify storage pandamium:jail auto_jails[-1].reason set from storage pandamium:jail reason

# remove entry 21 (max 20 entries)
execute if data storage pandamium:jail auto_jails[20] run data remove storage pandamium:jail auto_jails[0]

scoreboard players add <unread_auto_jails> variable 1

scoreboard players add <next_auto_jail_log_index> variable 1
execute if score <next_auto_jail_log_index> variable matches 21.. run scoreboard players set <next_auto_jail_log_index> variable 1

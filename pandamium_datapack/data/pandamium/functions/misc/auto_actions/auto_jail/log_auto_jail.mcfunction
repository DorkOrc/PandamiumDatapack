# new entry
data modify storage pandamium:auto_actions actions append value {id:0b,clickEvent:'""',username:'n/a',date:[I;0,0,0,0],type:'auto_jail',reason:'no reason',pre_jail_pos:[I;0,0,0,0]}

# fill in new entry's data
execute store result storage pandamium:auto_actions actions[-1].id byte 1 run scoreboard players get <next_auto_action_id> global
function pandamium:misc/auto_actions/auto_jail/get_click_event

function pandamium:misc/get_username
data modify storage pandamium:auto_actions actions[-1].username set from storage pandamium:temp username

execute store result storage pandamium:auto_actions actions[-1].date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium:auto_actions actions[-1].date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium:auto_actions actions[-1].date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium:auto_actions actions[-1].date[3] int 1 run scoreboard players get <hour> global

execute store result storage pandamium:auto_actions actions[-1].pre_jail_pos[0] int 1 run scoreboard players get @s pre_jail_pos_x
execute store result storage pandamium:auto_actions actions[-1].pre_jail_pos[1] int 1 run scoreboard players get @s pre_jail_pos_y
execute store result storage pandamium:auto_actions actions[-1].pre_jail_pos[2] int 1 run scoreboard players get @s pre_jail_pos_z
execute store result storage pandamium:auto_actions actions[-1].pre_jail_pos[3] int 1 run scoreboard players get @s pre_jail_pos_d

data modify storage pandamium:auto_actions actions[-1].reason set from storage pandamium:auto_actions reason

# remove entry 21 (max 20 entries)
execute if data storage pandamium:auto_actions actions[20] run data remove storage pandamium:auto_actions actions[0]

scoreboard players add <unread_auto_actions> global 1

scoreboard players add <next_auto_action_id> global 1
execute if score <next_auto_action_id> global matches 21.. run scoreboard players set <next_auto_action_id> global 1

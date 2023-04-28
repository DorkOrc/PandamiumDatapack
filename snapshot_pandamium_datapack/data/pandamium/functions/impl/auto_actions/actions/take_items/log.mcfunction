# new entry
data modify storage pandamium:auto_actions actions append value {id:0b,username:'n/a',date:[I;0,0,0,0],type:'take'}

# fill in new entry's data
execute store result storage pandamium:auto_actions actions[-1].id byte 1 run scoreboard players get <next_auto_action_id> global

function pandamium:utils/get/username
data modify storage pandamium:auto_actions actions[-1].username set from storage pandamium:temp username

execute store result storage pandamium:auto_actions actions[-1].date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium:auto_actions actions[-1].date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium:auto_actions actions[-1].date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium:auto_actions actions[-1].date[3] int 1 run scoreboard players get <hour> global

# remove entry 21 (max 20 entries)
execute if data storage pandamium:auto_actions actions[20] run data remove storage pandamium:auto_actions actions[0]

scoreboard players add <unread_auto_actions> global 1

scoreboard players add <next_auto_action_id> global 1
execute if score <next_auto_action_id> global matches 21.. run scoreboard players set <next_auto_action_id> global 1

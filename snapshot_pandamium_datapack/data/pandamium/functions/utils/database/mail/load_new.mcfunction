# get index
execute store result storage pandamium.db:mail selected.index int 1 store result storage pandamium:temp arguments.index int 1 store result score <index> variable if data storage pandamium.db:mail entries[]

# select (create) entry
data modify storage pandamium.db:mail selected.entry set value {mail_id:0,sender:{type:"none"},receivers:[],sent:0b}

# set mail_id
execute store result score <mail_id> variable run data get storage pandamium.db:mail last_mail_id
scoreboard players add <mail_id> variable 1
execute if score <mail_id> variable matches ..1 run scoreboard players set <mail_id> variable 2
execute store result storage pandamium:temp arguments.mail_id int 1 store result storage pandamium.db:mail selected.entry.mail_id int 1 store result storage pandamium.db:mail last_mail_id int 1 run scoreboard players get <mail_id> variable

# set index
function pandamium:impl/database/mail/create/set_index with storage pandamium:temp arguments

# set time
execute store result storage pandamium.db:mail selected.entry.gametime int 1 run time query gametime
data modify storage pandamium.db:mail selected.entry.date set value [I;0,0,0,0]
execute store result storage pandamium.db:mail selected.entry.date[0] int 1 run scoreboard players get <year> global
execute store result storage pandamium.db:mail selected.entry.date[1] int 1 run scoreboard players get <month> global
execute store result storage pandamium.db:mail selected.entry.date[2] int 1 run scoreboard players get <day> global
execute store result storage pandamium.db:mail selected.entry.date[3] int 1 run scoreboard players get <hour> global

# append entry
data modify storage pandamium.db:mail entries append from storage pandamium.db:mail selected.entry

# return
return run scoreboard players get <mail_id> variable

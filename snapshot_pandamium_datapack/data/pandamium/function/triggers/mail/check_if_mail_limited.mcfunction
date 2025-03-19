execute if score @s staff_perms matches 5.. run return 0
execute if score <dev_environment> global matches 1 run return 0

# check that the player has not used up their maximum hourly mails
function pandamium:utils/database/players/load/self

execute unless data storage pandamium.db.players:io selected.entry.data.mail.outbox[-10] run return 0

data remove storage pandamium.db.mail:io selected
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium.db.players:io selected.entry.data.mail.outbox[-10]
scoreboard players set <tenth_last_sent_timestamp> variable 0
execute store result score <tenth_last_sent_timestamp> variable run data get storage pandamium.db.mail:io selected.entry.gametime
scoreboard players operation <ticks_since_tenth_last_mail> variable = <current_gametime> global
execute store result score <minutes_until_can_send> variable run scoreboard players operation <ticks_since_tenth_last_mail> variable -= <tenth_last_sent_timestamp> variable
scoreboard players remove <minutes_until_can_send> variable 72000
scoreboard players operation <minutes_until_can_send> variable *= #-1 constant
scoreboard players operation <minutes_until_can_send> variable /= #ticks_per_minute constant
scoreboard players add <minutes_until_can_send> variable 1

execute if score <ticks_since_tenth_last_mail> variable matches 0..72000 if score <minutes_until_can_send> variable matches 60 run return run tellraw @s [{text:"[Mail]",color:"dark_red"},{text:" You may only send up to 10 mails per hour! Please wait at least ",color:"red",extra:[{text:"1 hour",bold:true}," before sending another mail."]}]
execute if score <ticks_since_tenth_last_mail> variable matches 0..72000 unless score <minutes_until_can_send> variable matches 60 run return run tellraw @s [{text:"[Mail]",color:"dark_red"},{text:" You may only send up to 10 mails per hour! Please wait at least ",color:"red",extra:[{score:{name:"<minutes_until_can_send>",objective:"variable"},bold:true,extra:[" minutes"]}," before sending another mail."]}]

return run execute if score <ticks_since_tenth_last_mail> variable matches 0..72000

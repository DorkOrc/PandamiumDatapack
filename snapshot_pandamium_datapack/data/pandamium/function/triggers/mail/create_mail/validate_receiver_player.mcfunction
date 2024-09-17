execute if score @s mail = @s id run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You cannot send yourself mail!","color":"red"}]
execute if score @s mail = @s id run return fail

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s mail
function pandamium:utils/database/players/load/from_id with storage pandamium:templates macro.id

execute unless data storage pandamium.db.players:io selected run tellraw @s [{"text":"[Mail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"mail"}},"!"]]
execute unless data storage pandamium.db.players:io selected run return fail

execute store result score <target_can_receive_mail> variable run function pandamium:triggers/mail/check_if_user_can_receive_mail with storage pandamium.db.players:io selected.entry
execute if score <target_can_receive_mail> variable matches -1 run tellraw @s [{"text":"[Mail]","color":"dark_red"},[{"text":" That player has not joined since mailing was enabled! Once they join the game at least once, they will be elligible for receiving mail.","color":"red"}]]
execute if score <target_can_receive_mail> variable matches ..-2 run tellraw @s [{"text":"[Mail]","color":"dark_red"},[{"text":" You may not send mail to that player currently!","color":"red"}]]
execute if score <target_can_receive_mail> variable matches ..-1 run return fail

return 1

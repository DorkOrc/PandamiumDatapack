function pandamium:utils/database/mail/modify/attach_item {from:'storage pandamium:temp item'}
function pandamium:utils/database/mail/modify/save_as_draft

execute if items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

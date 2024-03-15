function pandamium:utils/database/mail/modify/attach_item {from:"storage pandamium:temp item"}
execute if predicate pandamium:holding_anything_in_mainhand run item replace entity @s weapon.mainhand with air
execute unless predicate pandamium:holding_anything_in_mainhand run item replace entity @s weapon.offhand with air

function pandamium:utils/database/mail/modify/save_as_draft

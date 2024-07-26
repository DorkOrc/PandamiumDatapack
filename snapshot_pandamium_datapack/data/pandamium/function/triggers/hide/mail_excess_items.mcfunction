function pandamium:utils/count_filled_inventory_slots
execute unless items entity @s weapon.mainhand * run scoreboard players add <filled_inventory_slots> variable 1

execute unless block 1 0 0 barrel run return run tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" Something went wrong whilst trying to unequip your armour and hand items! Please remove them manually.","color":"red"}]
execute unless block 2 0 0 yellow_shulker_box run return run tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" Something went wrong whilst trying to unequip your armour and hand items! Please remove them manually.","color":"red"}]
loot replace block 1 0 0 container.0 27 loot minecraft:empty
loot replace block 2 0 0 container.0 27 loot minecraft:empty

execute if items entity @s armor.feet * run scoreboard players add <total_unequipped_items> variable 1
execute if score <filled_inventory_slots> variable matches 36 run item replace block 1 0 0 container.0 from entity @s armor.feet
execute if score <filled_inventory_slots> variable matches ..35 run item replace block 2 0 0 container.0 from entity @s armor.feet
execute if score <filled_inventory_slots> variable matches ..35 run scoreboard players add <filled_inventory_slots> variable 1
item replace entity @s armor.feet with air

execute if items entity @s armor.legs * run scoreboard players add <total_unequipped_items> variable 1
execute if score <filled_inventory_slots> variable matches 36 run item replace block 1 0 0 container.1 from entity @s armor.legs
execute if score <filled_inventory_slots> variable matches ..35 run item replace block 2 0 0 container.1 from entity @s armor.legs
execute if score <filled_inventory_slots> variable matches ..35 run scoreboard players add <filled_inventory_slots> variable 1
item replace entity @s armor.legs with air

execute if items entity @s armor.chest * run scoreboard players add <total_unequipped_items> variable 1
execute if score <filled_inventory_slots> variable matches 36 run item replace block 1 0 0 container.2 from entity @s armor.chest
execute if score <filled_inventory_slots> variable matches ..35 run item replace block 2 0 0 container.2 from entity @s armor.chest
execute if score <filled_inventory_slots> variable matches ..35 run scoreboard players add <filled_inventory_slots> variable 1
item replace entity @s armor.chest with air

execute if items entity @s armor.head * run scoreboard players add <total_unequipped_items> variable 1
execute if score <filled_inventory_slots> variable matches 36 run item replace block 1 0 0 container.3 from entity @s armor.head
execute if score <filled_inventory_slots> variable matches ..35 run item replace block 2 0 0 container.3 from entity @s armor.head
execute if score <filled_inventory_slots> variable matches ..35 run scoreboard players add <filled_inventory_slots> variable 1
item replace entity @s armor.head with air

execute if items entity @s weapon.offhand * run scoreboard players add <total_unequipped_items> variable 1
execute if score <filled_inventory_slots> variable matches 36 run item replace block 1 0 0 container.4 from entity @s weapon.offhand
execute if score <filled_inventory_slots> variable matches ..35 run item replace block 2 0 0 container.4 from entity @s weapon.offhand
execute if score <filled_inventory_slots> variable matches ..35 run scoreboard players add <filled_inventory_slots> variable 1
item replace entity @s weapon.offhand with air

execute if items entity @s weapon.mainhand * run scoreboard players add <total_unequipped_items> variable 1
execute if score <filled_inventory_slots> variable matches 36 run item replace block 1 0 0 container.5 from entity @s weapon.mainhand
execute if score <filled_inventory_slots> variable matches ..35 run item replace block 2 0 0 container.5 from entity @s weapon.mainhand
execute if score <filled_inventory_slots> variable matches ..35 run scoreboard players add <filled_inventory_slots> variable 1
item replace entity @s weapon.mainhand with air

item replace entity @s weapon.mainhand with barrier[custom_data={pandamium:{clear:1b}}]
loot give @s mine 2 0 0 barrier[custom_data={drop_contents:true}]
item replace entity @s weapon.mainhand with air

execute unless items block 1 0 0 container.* * run return 0

# Any left? Mail them to the player.
function pandamium:utils/database/mail/load_new
function pandamium:utils/database/mail/modify/set_sender_type/server
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:utils/database/mail/modify/add_receiver_from_id with storage pandamium:templates macro.id
data modify storage pandamium.db.mail:io selected.entry.data.title set value '"Removed Items Whilst Hidden"'
data modify storage pandamium.db.mail:io selected.entry.data.message set value '"Removed the items from your armour and hand slots while you were hidden."'
data modify storage pandamium.db.mail:io selected.entry.data.preview set value '"Removed the ite"'
data modify storage pandamium.db.mail:io selected.entry.ephemeral set value 1b

execute if items block 1 0 0 container.0 * run item replace block 5 0 0 contents from block 1 0 0 container.0
execute if items block 1 0 0 container.0 * run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

execute if items block 1 0 0 container.1 * run item replace block 5 0 0 contents from block 1 0 0 container.1
execute if items block 1 0 0 container.1 * run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

execute if items block 1 0 0 container.2 * run item replace block 5 0 0 contents from block 1 0 0 container.2
execute if items block 1 0 0 container.2 * run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

execute if items block 1 0 0 container.3 * run item replace block 5 0 0 contents from block 1 0 0 container.3
execute if items block 1 0 0 container.3 * run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

execute if items block 1 0 0 container.4 * run item replace block 5 0 0 contents from block 1 0 0 container.4
execute if items block 1 0 0 container.4 * run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

execute if items block 1 0 0 container.5 * run item replace block 5 0 0 contents from block 1 0 0 container.5
execute if items block 1 0 0 container.5 * run function pandamium:utils/database/mail/modify/attach_item {from:"block 5 0 0 item"}

function pandamium:utils/database/mail/modify/send
function pandamium:utils/database/mail/save

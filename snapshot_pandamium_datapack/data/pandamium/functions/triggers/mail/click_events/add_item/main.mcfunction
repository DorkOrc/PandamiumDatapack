# load mail
execute store result score <mail_id> variable store result storage pandamium:templates macro.mail_id.mail_id int 1 run data get storage pandamium.db:click_events selected.entry.data.mail_id
function pandamium:utils/database/mail/load/from_mail_id with storage pandamium:templates macro.mail_id

# get held item
execute if data storage pandamium.db:mail selected.entry.data.items[4] run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You have already used all 5 attachment slots for this mail!","color":"red"}]
execute unless predicate pandamium:holding_anything run return run tellraw @s [{"text":"[Mail]","color":"dark_red"},{"text":" You must be holding an item to attach it to a mail!","color":"red"}]

execute in pandamium:staff_world run item replace block 5 0 0 container.0 with air
execute in pandamium:staff_world run item replace block 5 0 0 container.0 from entity @s weapon.mainhand
execute in pandamium:staff_world store success score <mainhand> variable if data block 5 0 0 item
execute in pandamium:staff_world if score <mainhand> variable matches 0 run item replace block 5 0 0 container.0 from entity @s weapon.offhand
execute in pandamium:staff_world run data modify storage pandamium.db:mail selected.entry.data.items append from block 5 0 0 item

execute if score <mainhand> variable matches 1 run item replace entity @s weapon.mainhand with air
execute if score <mainhand> variable matches 0 run item replace entity @s weapon.offhand with air

# get item display name
execute in pandamium:staff_world run summon item 3 0 0 {Item:{id:"minecraft:stone",Count:1b},Tags:["mail.added_item"]}
execute in pandamium:staff_world run data modify entity @e[x=3.5,y=0.0,z=0.5,type=item,tag=mail.added_item,distance=..1,limit=1] Item set from storage pandamium.db:mail selected.entry.data.items[-1]
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"selector":"@e[x=3.5,y=0.0,z=0.5,type=item,tag=mail.added_item,distance=..1,limit=1]","insertion":""}'
execute in pandamium:staff_world run kill @e[x=3.5,y=0.0,z=0.5,type=item,tag=mail.added_item,distance=..1,limit=1]

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[1] set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world if data storage pandamium.db:mail selected.entry.data.items[-1].tag.title run data modify block 3 0 0 front_text.messages[1] set value '{"storage":"pandamium.db:mail","nbt":"selected.entry.data.items[-1].tag.title"}'
execute in pandamium:staff_world if data storage pandamium.db:mail selected.entry.data.items[-1].tag.display.Name run data modify block 3 0 0 front_text.messages[1] set value '{"storage":"pandamium.db:mail","nbt":"selected.entry.data.items[-1].tag.display.Name","interpret":true}'

execute in pandamium:staff_world run data modify storage pandamium:temp item_display_name set from block 3 0 0 front_text.messages[1]
execute in pandamium:staff_world if data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world unless data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[1]

data modify storage pandamium:templates macro.id__tag__count.tag set value {}
data modify storage pandamium:templates macro.id__tag__count.tag.display set from storage pandamium.db:mail selected.entry.data.items[-1].tag.display
data modify storage pandamium:templates macro.id__tag__count.tag.Damage set from storage pandamium.db:mail selected.entry.data.items[-1].tag.Damage
data modify storage pandamium:templates macro.id__tag__count.tag.Enchantments set from storage pandamium.db:mail selected.entry.data.items[-1].tag.Enchantments
data modify storage pandamium:templates macro.id__tag__count.tag.StoredEnchantments set from storage pandamium.db:mail selected.entry.data.items[-1].tag.StoredEnchantments
data modify storage pandamium:templates macro.id__tag__count.tag.Potion set from storage pandamium.db:mail selected.entry.data.items[-1].tag.Potion
data modify storage pandamium:templates macro.id__tag__count.tag.Items set from storage pandamium.db:mail selected.entry.data.items[-1].tag.Items
data modify storage pandamium:templates macro.id__tag__count.tag.BlockEntityTag.Items set from storage pandamium.db:mail selected.entry.data.items[-1].tag.BlockEntityTag.Items
data modify storage pandamium:templates macro.id__tag__count.tag.BlockEntityTag.Patterns set from storage pandamium.db:mail selected.entry.data.items[-1].tag.BlockEntityTag.Patterns
data modify storage pandamium:templates macro.id__tag__count.tag.Fireworks set from storage pandamium.db:mail selected.entry.data.items[-1].tag.Fireworks
data modify storage pandamium:templates macro.id__tag__count.tag.map set from storage pandamium.db:mail selected.entry.data.items[-1].tag.map
data modify storage pandamium:templates macro.id__tag__count.tag.title set from storage pandamium.db:mail selected.entry.data.items[-1].tag.title
data modify storage pandamium:templates macro.id__tag__count.tag.author set from storage pandamium.db:mail selected.entry.data.items[-1].tag.author
data modify storage pandamium:templates macro.id__tag__count.tag.SkullOwner.Name set from storage pandamium.db:mail selected.entry.data.items[-1].tag.SkullOwner.Name
data modify storage pandamium:templates macro.id__tag__count.tag.HideFlags set from storage pandamium.db:mail selected.entry.data.items[-1].tag.HideFlags
execute if data storage pandamium.db:mail selected.entry.data.items[-1].tag.LodestonePos run data modify storage pandamium:templates macro.id__tag__count.tag.LodestonePos set value {}
execute store result score <tag_length> variable run data get storage pandamium:templates macro.id__tag__count.tag
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:templates","nbt":"macro.id__tag__count.tag"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.id__tag__count.tag set string block 3 0 0 front_text.messages[0] 1 -1
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:templates","nbt":"macro.id__tag__count.tag"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.id__tag__count.tag set string block 3 0 0 front_text.messages[0] 1 -1
data modify storage pandamium:templates macro.id__tag__count.id set from storage pandamium.db:mail selected.entry.data.items[-1].id
execute store result storage pandamium:templates macro.id__tag__count.count int 1 store result score <count> variable run data get storage pandamium.db:mail selected.entry.data.items[-1].Count
function pandamium:triggers/mail/click_events/add_item/get_attachment_name with storage pandamium:templates macro.id__tag__count

# save as draft
function pandamium:utils/database/mail/modify/save_as_draft

# reprint menu
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/expire_mail_click_events with storage pandamium:templates macro.id
function pandamium:triggers/mail/print_preparation_menu

# save changes
function pandamium:utils/database/mail/save

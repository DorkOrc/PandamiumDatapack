# arguments: from

data modify storage pandamium:temp item set value {id:"minecraft:air",Count:0b}
$data modify storage pandamium:temp item set from $(from)

execute if data storage pandamium:temp item{id:"minecraft:air"} run return fail
execute if data storage pandamium:temp item{Count:0b} run return fail

data modify storage pandamium.db:mail selected.entry.data.items append value {}
data modify storage pandamium.db:mail selected.entry.data.items[-1] merge from storage pandamium:temp item

# get display name
execute in pandamium:staff_world run summon item 3.5 0.0 0.5 {Item:{id:"minecraft:stone",Count:1b},Tags:["mail.added_item"]}
execute in pandamium:staff_world as @e[x=3.5,y=0.0,z=0.5,type=item,tag=mail.added_item,distance=..1,limit=1] run function pandamium:impl/database/mail/modify/attach_item/as_item

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[1] set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world if data storage pandamium.db:mail selected.entry.data.items[-1].tag.title run data modify block 3 0 0 front_text.messages[1] set value '{"storage":"pandamium.db:mail","nbt":"selected.entry.data.items[-1].tag.title"}'
execute in pandamium:staff_world if data storage pandamium.db:mail selected.entry.data.items[-1].tag.display.Name run data modify block 3 0 0 front_text.messages[1] set value '{"storage":"pandamium.db:mail","nbt":"selected.entry.data.items[-1].tag.display.Name","interpret":true}'

execute in pandamium:staff_world run data modify storage pandamium:temp item_display_name set from block 3 0 0 front_text.messages[1]
execute in pandamium:staff_world if data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[0]
execute in pandamium:staff_world unless data storage pandamium:temp {item_display_name:'""'} run data modify storage pandamium.db:mail selected.entry.data.items[-1].name set from block 3 0 0 front_text.messages[1]

# set item tag arguments to only the data necessary for item hover event
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

# escape twice
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:templates","nbt":"macro.id__tag__count.tag"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.id__tag__count.tag set string block 3 0 0 front_text.messages[0] 1 -1
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"storage":"pandamium:templates","nbt":"macro.id__tag__count.tag"}'
execute in pandamium:staff_world run data modify storage pandamium:templates macro.id__tag__count.tag set string block 3 0 0 front_text.messages[0] 1 -1

# set name
data modify storage pandamium:templates macro.id__tag__count.id set from storage pandamium.db:mail selected.entry.data.items[-1].id
execute store result storage pandamium:templates macro.id__tag__count.count int 1 store result score <count> variable run data get storage pandamium.db:mail selected.entry.data.items[-1].Count
function pandamium:impl/database/mail/modify/attach_item/set_name with storage pandamium:templates macro.id__tag__count

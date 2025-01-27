# copy item into item entity
data modify entity @s Item set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".item

# get display name
data modify storage pandamium:text input set value {selector:"@s"}
execute if items entity @s contents *[custom_name] run data modify storage pandamium:text input set value {text:"",italic:true,extra:[{storage:"pandamium:local",nbt:'functions."pandamium:utils/database/mail/modify/attach_item".item.components.minecraft:custom_name',interpret:true}]}
execute if items entity @s contents *[!custom_name,written_book_content,!written_book_content~{title:""}] run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".item.components.minecraft:written_book_content.title.raw
function pandamium:utils/text/input/resolve

# ensure it is a compound and not a string
function pandamium:utils/text/input/force_compound

# add (or replace) insertion and hover_event
data modify storage pandamium:text input.insertion set string storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".stored_item_id
data modify storage pandamium:text input.hover_event set value {action:"show_item"}
data modify storage pandamium:text input.hover_event merge from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".filtered_item

# apply rarity colour to root
execute if items entity @s contents *[enchantments~[{}],rarity=common|rarity=uncommon] run data modify storage pandamium:text input.color set value "aqua"
execute if items entity @s contents *[rarity=uncommon,!enchantments~[{}]] run data modify storage pandamium:text input.color set value "yellow"
execute if items entity @s contents *[rarity=rare] run data modify storage pandamium:text input.color set value "aqua"
execute if items entity @s contents *[rarity=epic] run data modify storage pandamium:text input.color set value "light_purple"

# apply count prefix
execute if items entity @s contents *[count~{min:2}] run data modify storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".name set value {translate:"container.shulkerBox.itemCount",fallback:"%s x%s",with:[{},{score:{name:"<count>",objective:"variable"}}]}
execute if items entity @s contents *[count~{min:2}] run data modify storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".name.with[0] set from storage pandamium:text input
execute if items entity @s contents *[count~{min:2}] run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".name

# copy to attachment
function pandamium:utils/text/input/resolve
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].name set from storage pandamium:text input

# kill item entity
kill @s

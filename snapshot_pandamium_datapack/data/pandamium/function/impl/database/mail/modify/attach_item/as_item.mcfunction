# copy item into item entity
data modify entity @s Item set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".item

# get display name
data modify storage do:io input set value {selector:"@s"}
execute if items entity @s contents *[custom_name] run data modify storage do:io input set value {text:"",italic:true,extra:[{storage:"pandamium:local",nbt:'functions."pandamium:utils/database/mail/modify/attach_item".item.components.minecraft:custom_name',interpret:true}]}
execute if items entity @s contents *[!custom_name,written_book_content,!written_book_content~{title:""}] run data modify storage do:io input set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".item.components.minecraft:written_book_content.title.raw
function do:text/resolve

# ensure it is a compound and not a string
execute if data storage do:io output{} run data modify storage do:io input set from storage do:io output
execute unless data storage do:io output{} run data modify storage do:io input.text set from storage do:io output

# add (or replace) insertion and hover_event
data modify storage do:io input.insertion set string storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".stored_item_id
data modify storage do:io input.hover_event set value {action:"show_item"}
data modify storage do:io input.hover_event merge from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".filtered_item

# apply rarity colour to root
execute if items entity @s contents *[enchantments~[{}],rarity=common|rarity=uncommon] run data modify storage do:io input.color set value "aqua"
execute if items entity @s contents *[rarity=uncommon,!enchantments~[{}]] run data modify storage do:io input.color set value "yellow"
execute if items entity @s contents *[rarity=rare] run data modify storage do:io input.color set value "aqua"
execute if items entity @s contents *[rarity=epic] run data modify storage do:io input.color set value "light_purple"

# apply count prefix
execute if items entity @s contents *[count~{min:2}] run data modify storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".name set value {translate:"item.container.item_count",fallback:"%s x%s",with:[{},{score:{name:"<count>",objective:"variable"}}]}
execute if items entity @s contents *[count~{min:2}] run data modify storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".name.with[0] set from storage do:io input
execute if items entity @s contents *[count~{min:2}] run data modify storage do:io input set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".name

# copy to attachment
function do:text/resolve
data modify storage pandamium.db.mail:io selected.entry.data.items[-1].name set from storage do:io output

# kill item entity
kill @s

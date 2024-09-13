# arguments: stored_item_id, filtered_item, reduced_item, (item)

data modify entity @s Item set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".item

$execute if items entity @s contents *[custom_name] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",italic:true},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true,insertion:"$(stored_item_id)",hoverEvent:{action:"show_item",contents:$(filtered_item)}}]}
$execute unless items entity @s contents *[custom_name] if items entity @s contents *[written_book_content,!written_book_content~{title:""}] run item modify entity @s contents {function:"set_name",entity:"this",name:{entity:"@s",nbt:"Item.components.minecraft:written_book_content.title.raw",insertion:"$(stored_item_id)",hoverEvent:{action:"show_item",contents:$(filtered_item)}}}
$execute unless items entity @s contents *[custom_name] run item modify entity @s contents {function:"set_name",entity:"this",name:{selector:"@s",insertion:"$(stored_item_id)",hoverEvent:{action:"show_item",contents:$(filtered_item)}}}

execute if items entity @s contents *[rarity=uncommon,!enchantments~[{}]] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",color:"yellow"},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true}]}
execute if items entity @s contents *[rarity=common|rarity=uncommon,enchantments~[{}]] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",color:"aqua"},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true}]}
execute if items entity @s contents *[rarity=rare] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",color:"aqua"},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true}]}
execute if items entity @s contents *[rarity=epic] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",color:"light_purple"},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true}]}
execute if items entity @s contents *[count~{min:2}] run item modify entity @s contents {function:"set_name",entity:"this",name:{translate:"container.shulkerBox.itemCount",fallback:"%s x%s",with:[{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true},{score:{name:"<count>",objective:"variable"}}]}}
data modify block 3 0 0 front_text.messages[0] set from entity @s Item.components.minecraft:custom_name

data modify entity @s Item set from storage pandamium:local functions."pandamium:utils/database/mail/modify/attach_item".reduced_item
$item modify entity @s contents {function:"set_name",entity:"this",name:{selector:"@s",insertion:"$(stored_item_id)",hoverEvent:{action:"show_item",contents:$(reduced_item)}}}
execute if items entity @s contents *[rarity=uncommon] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",color:"yellow"},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true}]}
execute if items entity @s contents *[rarity=rare] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",color:"aqua"},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true}]}
execute if items entity @s contents *[rarity=epic] run item modify entity @s contents {function:"set_name",entity:"this",name:[{text:"",color:"light_purple"},{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true}]}
execute if items entity @s contents *[count~{min:2}] run item modify entity @s contents {function:"set_name",entity:"this",name:{translate:"container.shulkerBox.itemCount",fallback:"%s x%s",with:[{entity:"@s",nbt:"Item.components.minecraft:custom_name",interpret:true},{score:{name:"<count>",objective:"variable"}}]}}
data modify block 3 0 0 front_text.messages[1] set from entity @s Item.components.minecraft:custom_name

kill @s

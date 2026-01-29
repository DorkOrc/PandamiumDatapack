scoreboard players add @s custom_name 0

execute unless predicate pandamium:entity/has_custom_name run return run scoreboard players set @s custom_name 0

scoreboard players set @s custom_name 1
execute if predicate pandamium:entity/custom_name_is_edit_key run data modify entity @s CustomName set value {text:"#",extra:[""]}
function do:text/resolve. {args:{text_component:{selector:"@s"}}}
scoreboard players display numberformat @s custom_name fixed {storage:"do:io",nbt:"output.hover_event.name",interpret:true}

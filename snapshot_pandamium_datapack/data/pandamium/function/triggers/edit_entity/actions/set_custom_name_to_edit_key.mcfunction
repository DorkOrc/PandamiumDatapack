execute if predicate pandamium:entity/custom_name/forced run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! This mob's name is locked."}]

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{components:{"minecraft:custom_name":{text:"#",extra:[""]}}}} run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option!"}]

execute store result score <has_edit_key_name_tag> variable run clear @a[limit=1,tag=edit_entity.player] name_tag[custom_name="#"] 0
execute if score <has_edit_key_name_tag> variable matches 0 run return run tellraw @a[limit=1,tag=edit_entity.player] [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option! You must have a \"#\" name tag in your inventory to set it as this mob's name."}]


execute as @a[limit=1,tag=edit_entity.player] run function pandamium:triggers/edit_entity/deduct_edit_key_name_tag
data modify entity @s CustomName set value {text:"#",extra:[""]}
function pandamium:entity/custom_name/make_copy

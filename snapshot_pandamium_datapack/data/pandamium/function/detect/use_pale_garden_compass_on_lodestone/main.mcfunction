advancement revoke @s only pandamium:detect/use_pale_garden_compass_on_lodestone

# copy
execute if items entity @s weapon.mainhand compass[custom_data~{pandamium:{id:'pale_garden_compass'}}] in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute if items entity @s weapon.offhand compass[custom_data~{pandamium:{id:'pale_garden_compass'}}] in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand

# modify
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components set from block 5 0 0 item.components
data remove storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components.minecraft:custom_data.pandamium.id
data remove storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components.minecraft:custom_data.pandamium.version
data remove storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components.minecraft:custom_data.pandamium.used_timestamp
execute store result score <size> variable run data get storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components.minecraft:custom_data.pandamium
execute if score <size> variable matches 0 run data remove storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components.minecraft:custom_data.pandamium
data remove storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components.minecraft:item_name
execute in pandamium:staff_world run data modify block 5 0 0 item.components set from storage pandamium:local functions."pandamium:detect/use_pale_garden_compass_on_lodestone/*".components

execute in pandamium:staff_world run item modify block 5 0 0 contents {\
    function: "minecraft:set_components",\
    components: {\
        "minecraft:lore": [],\
        "!minecraft:consumable": {},\
        "!minecraft:custom_model_data": {}\
    }\
}
execute in pandamium:staff_world if items block 5 0 0 contents *[custom_data={}] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}
execute in pandamium:staff_world if items block 5 0 0 contents *[custom_name="{\"fallback\":\"Pale Garden Compass\",\"italic\":false,\"translate\":\"item.pandamium.pale_garden_compass\"}"] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:custom_name":{}}}

# return
execute if items entity @s weapon.mainhand compass[custom_data~{pandamium:{id:'pale_garden_compass'}}] in pandamium:staff_world run return run item replace entity @s weapon.mainhand from block 5 0 0 contents
execute if items entity @s weapon.offhand compass[custom_data~{pandamium:{id:'pale_garden_compass'}}] in pandamium:staff_world run item replace entity @s weapon.offhand from block 5 0 0 contents

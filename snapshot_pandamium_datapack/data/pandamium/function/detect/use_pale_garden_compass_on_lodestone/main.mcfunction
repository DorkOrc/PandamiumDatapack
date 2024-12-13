advancement revoke @s only pandamium:detect/use_pale_garden_compass_on_lodestone

title @s actionbar "Decalibrated Compass"

execute store success score <mainhand> variable if items entity @s weapon.mainhand compass[custom_data~{pandamium:{id:'pale_garden_compass'}}]

execute if score <mainhand> variable matches 1 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.mainhand
execute if score <mainhand> variable matches 0 in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand

execute in pandamium:staff_world run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:lodestone_tracker":{}}}

execute if score <mainhand> variable matches 1 run item replace entity @s weapon.mainhand with air
execute if score <mainhand> variable matches 1 in pandamium:staff_world run return run item replace entity @s weapon.mainhand from block 5 0 0 contents

execute if score <mainhand> variable matches 0 run item replace entity @s weapon.offhand with air
execute if score <mainhand> variable matches 0 in pandamium:staff_world run return run item replace entity @s weapon.offhand from block 5 0 0 contents

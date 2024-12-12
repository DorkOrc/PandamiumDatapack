#{
#	action: "pale_garden_compass",
#	placed: BOOL,
#	user_id: INT
#}

execute if data storage pandamium:queue actions_ran."pale_garden_compass" run return run function pandamium:impl/queue/utils/continue_pending

execute store success score <placed> variable if data storage pandamium:queue selected.entry{placed:1b}

execute if score <placed> variable matches 0 in pandamium:staff_world run setblock 6 2 0 air
$execute if score <placed> variable matches 0 in pandamium:staff_world run setblock 6 2 0 command_block{auto:1b,Command:'execute at @a[scores={id=$(user_id)},limit=1] run locate biome minecraft:pale_garden'}
execute if score <placed> variable matches 0 run data modify storage pandamium:queue selected.entry.placed set value 1b

# continue
execute if score <placed> variable matches 0 run data modify storage pandamium:queue selected.entry.meta.value set value 1
execute if score <placed> variable matches 0 run return run function pandamium:impl/queue/utils/continue

# end
$execute as @a[scores={id=$(user_id)},limit=1] unless items entity @s weapon.* compass[custom_data~{pandamium:{id:"pale_garden_compass"}}] run return run tellraw @s [{"text":"[Private Info]","color":"dark_red"},{"text":" You switched off of the compass too fast! When right-clicking a Pale Garden Compass, hold it until it finds a biome.","color":"red"}]

data remove storage pandamium:text input
execute in pandamium:staff_world run data modify storage pandamium:text input set from block 6 2 0 LastOutput
$execute unless data storage pandamium:text input run return run tellraw @a[scores={id=$(user_id)},limit=1] [{"text":"[Private Info]","color":"dark_red"},{"text":" Could not find a Pale Garden within reasonable distance!","color":"red"}]

function pandamium:utils/text/get_compound
data modify storage pandamium:queue selected.entry.x set from storage pandamium:text compound.extra[0].with[1].with[0].with[0].text
data modify storage pandamium:queue selected.entry.y set from storage pandamium:text compound.extra[0].with[1].with[0].with[1].text
data modify storage pandamium:queue selected.entry.z set from storage pandamium:text compound.extra[0].with[1].with[0].with[2].text
data modify storage pandamium:queue selected.entry.distance set from storage pandamium:text compound.extra[0].with[2].text

$execute store success score <mainhand> variable if items entity @a[scores={id=$(user_id)},limit=1] weapon.mainhand compass[custom_data~{pandamium:{id:"pale_garden_compass"}}]
execute if score <mainhand> variable matches 1 run data modify storage pandamium:queue selected.entry.slot set value "weapon.mainhand"
execute if score <mainhand> variable matches 0 run data modify storage pandamium:queue selected.entry.slot set value "weapon.offhand"

execute store result storage pandamium:queue selected.entry.current_gametime int 1 run scoreboard players get <current_gametime> global

$execute as @a[scores={id=$(user_id)},limit=1] run function pandamium:impl/queue/actions/pale_garden_compass/success with storage pandamium:queue selected.entry

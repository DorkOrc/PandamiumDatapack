# run IN pandamium:staff_world

# set chest data
data modify block ~ ~ ~ components.minecraft:custom_data.pandamium.staff_world_chest set value {chest_type:"single"}
execute store result block ~ ~ ~ components.minecraft:custom_data.pandamium.staff_world_chest.contents_owner.id int 1 run scoreboard players get @s id

# Move Items
data modify block ~ ~ ~ Items set from entity @s EnderItems

# Clear Items
loot replace entity @s enderchest.0 27 loot pandamium:intentionally_empty

# Name Chest
function pandamium:utils/get/username
data modify storage pandamium:text input set value [{nbt:"username",storage:"pandamium:temp"},{text:"'s Ender Chest"}]
function pandamium:utils/text/input/resolve
data modify block ~ ~ ~ CustomName set from storage pandamium:text input

# set signs
setblock ~-1 ~ ~ oak_wall_sign[facing=west]{front_text:{color:"yellow",has_glowing_text:1b,messages:[{nbt:"username",storage:"pandamium:temp",bold:true,font:"minecraft:uniform",color:"white"},{bold:true,text:"Ctrl+Click",click_event:{action:"run_command",command:"function pandamium:impl/take/sign_interact/main"}},"to Return Items","& Remove Chest"]},is_waxed:1b}

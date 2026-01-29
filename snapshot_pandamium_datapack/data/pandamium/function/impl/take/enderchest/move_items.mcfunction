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
data modify storage do:io input set value [{nbt:"username",storage:"pandamium:temp",interpret:true},{text:"'s Ender Chest"}]
function do:text/resolve
data modify block ~ ~ ~ CustomName set from storage do:io output

# set signs
setblock ~-1 ~ ~ oak_wall_sign[facing=west]{front_text:{color:"yellow",has_glowing_text:1b,messages:[{nbt:"username",storage:"pandamium:temp",interpret:true,bold:true,font:"minecraft:uniform",color:"white"},{bold:true,text:"Ctrl+Click",click_event:{action:"run_command",command:"function pandamium:impl/take/sign_interact/main"}},"to Return Items","& Remove Chest"]},is_waxed:1b}

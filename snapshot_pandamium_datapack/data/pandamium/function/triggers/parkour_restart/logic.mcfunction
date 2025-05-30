# check if they are actually in a course
execute unless score @s parkour.checkpoint matches 0.. run return run tellraw @s [{text:"[Parkour]",color:"dark_red"},{text:" You are not currently running a parkour course!",color:"red"}]

# get course number
execute store result score <course> variable run scoreboard players get @s parkour.checkpoint
scoreboard players operation <course> variable /= #100 constant
scoreboard players add <course> variable 1

# do restart
execute if score <course> variable matches 3 run tellraw @s [{text:"[Parkour] ",color:"dark_green"},{text:"Restarted the ",color:"green",extra:[{storage:"pandamium:dictionary",nbt:"parkour.parkour_3.name",interpret:true,color:"aqua"}," parkour course!"]}]
execute if score <course> variable matches 3 at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.25
execute if score <course> variable matches 3 run return run function pandamium:impl/parkour/parkour_3/restart

execute if score <course> variable matches 4 run tellraw @s [{text:"[Parkour] ",color:"dark_green"},{text:"Restarted the ",color:"green",extra:[{storage:"pandamium:dictionary",nbt:"parkour.parkour_4.name",interpret:true,color:"aqua"}," parkour course! New attempt started."]}]
execute if score <course> variable matches 4 at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.25
execute if score <course> variable matches 4 run return run function pandamium:impl/parkour/parkour_4/restart

# else
tellraw @s [{text:"[Parkour]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

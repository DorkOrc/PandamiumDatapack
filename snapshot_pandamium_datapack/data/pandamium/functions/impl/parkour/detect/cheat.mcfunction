data modify storage pandamium:temp cheat_data set value {type:"unknown",name:"Unknown",return_to_start:1b}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={ride_entity=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"ride_entity",name:"Riding an entity"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={switch_gamemode=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"switch_gamemode",name:"Switching to an invalid gamemode",return_to_start:0b}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={leave_course=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"leave_course",name:"Leaving the course",return_to_start:0b}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={get_levitation=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"get_levitation",name:"Gaining the Levitation effect"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={get_slow_falling=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"get_slow_falling",name:"Gaining the Slow Falling effect"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={get_speed=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"get_speed",name:"Gaining the Speed effect"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={get_jump_boost=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"get_jump_boost",name:"Gaining the Jump Boost effect"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={use_trident=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"use_triden",name:"Using a trident"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={use_ender_pearl=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"use_ender_pearl",name:"Throwing an ender pearl"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={aviate=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"aviate",name:"Using an elytra"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={consume_chorus_fruit=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"consume_chorus_fruit",name:"Eating a chorus fruit"}
execute if entity @s[advancements={pandamium:detect/parkour/cheat={teleport=true}}] run data modify storage pandamium:temp cheat_data merge value {type:"teleport",name:"Teleporting",return_to_start:0b}

execute if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/cheat

scoreboard players reset @s detect.aviate
scoreboard players reset @s detect.use.ender_pearl
scoreboard players reset @s detect.use.trident

advancement revoke @s only pandamium:detect/parkour/cheat

# choose a target
scoreboard players operation <id> variable = @s last_player_head_user_id
tag @r[predicate=!pandamium:matches_id,predicate=!pandamium:player/is_vanished] add target

# give the head
execute as @a[tag=target,limit=1] run loot give @a[tag=source,limit=1] loot pandamium:utility/head
execute at @s run playsound minecraft:entity.sheep.shear master @s
scoreboard players operation @s last_player_head_user_id = @a[tag=target,limit=1] id

# tell the target
tellraw @s[tag=target] {text:"",color:"gray",italic:true,extra:["You got your own head!"]}
tellraw @s[tag=!target] {text:"You got ",color:"gray",italic:true,extra:[{selector:"@a[tag=target,limit=1]"},"'s head!"]}
tellraw @a[tag=target,tag=!source,limit=1] {text:"",color:"gray",italic:true,extra:[{selector:"@s"}," got your head!"]}
execute as @a[tag=target,tag=!source,limit=1] at @s run playsound minecraft:entity.sheep.shear master @s
tag @a[tag=target] remove target

# return success
return 1

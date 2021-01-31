#RUN IN pandamium:staff_world
data modify storage pandamium:jail_items NBT set from entity @s
data modify storage pandamium:jail_items Thrower set from storage pandamium:jail_items NBT.Thrower
data modify storage pandamium:jail_items Item set from storage pandamium:jail_items NBT.Item

scoreboard players operation <hour+1> variable = <hour> variable
scoreboard players add <hour+1> variable 1
execute run setblock 7 64 -6 air
setblock 7 64 -6 oak_sign{Text1:'[{"score":{"name":"<day>","objective":"variable"},"color":"gray","italic":false},"/",{"score":{"name":"<month>","objective":"variable"}},"/",{"score":{"name":"<year>","objective":"variable"}}," at ≈ ",{"score":{"name":"<hour>","objective":"variable"}},":00-",{"score":{"name":"<hour+1>","objective":"variable"}},":00 UTC"]',Text2:'{"text":"Unknown Thrower","color":"gray","italic":false}'}

execute unless block 7 64 2 chest run setblock 7 64 2 chest[facing=west,type=right]
execute unless block 7 64 3 chest run setblock 7 64 3 chest[facing=west,type=left]
summon armor_stand 7 64 2 {Tags:["jail_items.chest"],NoGravity:1b,Invisible:1b,Marker:1b}
scoreboard players set <chest_num> variable 0
execute as @e[x=0,type=armor_stand,tag=jail_items.chest] run function pandamium:misc/jail_items/find_next_free_chest

scoreboard players set <player_exists> variable 0
execute in overworld as @a[x=0,scores={jailed=1..}] run function pandamium:misc/jail_items/find_thrower
execute if score <player_exists> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," A player threw an item in jail! It was put into ",[{"text":"Jail Items Chest ","bold":true},{"score":{"name":"<chest_num>","objective":"variable"}}],"."]

data modify storage pandamium:jail_items Item.tag.jail_item set value 1b
execute unless data storage pandamium:jail_items Item.tag.display run data modify storage pandamium:jail_items Item.tag.jail_item set value 2b
data modify storage pandamium:jail_items Item.tag.display.Lore set value []
data modify storage pandamium:jail_items Item.tag.display.Lore append from block 7 64 -6 Text1
data modify storage pandamium:jail_items Item.tag.display.Lore append from block 7 64 -6 Text2

execute at @e[x=0,type=armor_stand,tag=jail_items.chest] run function pandamium:misc/jail_items/insert_item

kill @e[x=0,type=armor_stand,tag=jail_items.chest]
kill @s

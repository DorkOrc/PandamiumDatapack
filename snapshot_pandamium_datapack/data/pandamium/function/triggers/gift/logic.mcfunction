execute if score @s gift matches 1 run return run function pandamium:triggers/gift/print_menu/main

#
execute if score @s gift matches ..-1 run return run tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# detect issues
execute if score @s gift_cooldown matches 1.. run return run function pandamium:triggers/gift/print_cooldown
execute unless score @s reward_credits matches 1.. run return run tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" You do not have any reward credits!",color:"red"}]
execute if score @s gift = @s id run return run tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" You cannot send a reward credit to yourself!",color:"red"}]

# select player
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players operation <id> variable = @s gift
execute store success score <target_exists> variable if entity @a[predicate=pandamium:matches_id,limit=1]

execute if score <target_exists> variable matches 0 run function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
execute if score <target_exists> variable matches 0 if data storage pandamium:temp display_name run return run tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" ",color:"red",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" is not online!"}]}]
execute if score <target_exists> variable matches 0 run return run tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" Could not find a player with ID ",color:"red",extra:[{score:{name:"@s",objective:"gift"}},"!"]}]

# Run
execute as @a[predicate=pandamium:matches_id,limit=1] at @s run function pandamium:triggers/gift/receive_vote_credit
scoreboard players remove @s reward_credits 1
scoreboard players set @s gift_cooldown 18000
execute unless entity @s[gamemode=spectator] unless score @s hidden matches 1.. anchored eyes run particle heart ^ ^ ^ 0.3 0.3 0.3 0 5
return run tellraw @s [{text:"",color:"green"},{text:"[Gift]",color:"dark_green"}," Gifted ",{selector:"@a[predicate=pandamium:matches_id,limit=1]"}," a ",{text:"reward credit",color:"aqua"},"! You now have ",{score:{name:"@s",objective:"reward_credits"},bold:true,color:"aqua"}," reward credit",{text:"(s)",color:"gray"},"! ",{text:"(-",color:"red",extra:[{text:"1",bold:true},")"]}]

# post
tellraw @s [{text:"[Gift]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

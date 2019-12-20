# Check the cooldown
# > Minutes
execute as @s run scoreboard players operation @s temp_1 = @s tpa_cooldown
execute as @s run scoreboard players set @s temp_2 1200
execute as @s run scoreboard players operation @s temp_1 /= @s temp_2
execute as @s run scoreboard players set @s temp_3 72000

# > Seconds
execute as @s run scoreboard players operation @s temp_2 = @s tpa_cooldown
execute as @s run scoreboard players set @s temp_3 20
execute as @s run scoreboard players operation @s temp_2 /= @s temp_3
execute as @s run scoreboard players set @s temp_3 60
execute as @s run scoreboard players operation @s temp_2 %= @s temp_3

execute if score @s tpa_cooldown matches 1.. run execute as @s run tellraw @s [{"text":"[TPA]","color":"dark_blue"},{"text":" You need to wait another ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" minutes and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" seconds before you can use\n ","color":"green"},{"text":"/trigger tpa","color":"aqua"},{"text":" again! You can ","color":"green"},{"text":"donate","color":"aqua"},{"text":" to remove it!","color":"green"}]


execute unless score @s tpa_cooldown matches 1.. run function pandamium:tpa/go_check_request



# scoreboard players set @s tpa 0


# Show playtime
#scoreboard players operation @s temp_1 = @s playtime_ticks
#scoreboard players set @s temp_3 72000
#scoreboard players operation @s temp_1 /= @s temp_3

#scoreboard players operation @s temp_2 = @s playtime_ticks
#scoreboard players set @s temp_3 1200
#scoreboard players operation @s temp_2 /= @s temp_3
#scoreboard players set @s temp_3 60
#scoreboard players operation @s temp_2 %= @s temp_3

execute if score @s show_playtime matches 1 run tellraw @s [{"text":"You have played for ","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"aqua"},{"text":" hours and ","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"aqua"},{"text":" minutes!","color":"green"}] 

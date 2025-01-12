execute unless score @s gameplay_perms matches 6.. unless score @s staff_perms matches 1.. run return run tellraw @s [{text:"[Pose]",color:"dark_red"},{storage:"pandamium:dictionary",nbt:"triggers.supporter_only_trigger",interpret:true},{text:"\n This command would let you pose any armour stand and even make it float, be invisible, and more!",color:"gray"}]
execute unless score @s gameplay_perms matches 6.. if score @s staff_perms matches 1.. unless score @s pose matches -403 run return run tellraw @s [{text:"[Pose]",color:"dark_red"},{storage:"pandamium:dictionary",nbt:"triggers.supporter_only_trigger",interpret:true,extra:[{text:" "},{text:"[🔓]",color:"yellow",hover_event:{action:"show_text",text:[{text:"Click to ",color:"yellow"},{text:"Unlock",bold:true},{text:" the armour stand"},{text:"\n(Staff Only)",color:"#7E7E2A"}]},click_event:{action:"run_command",command:"trigger pose set -403"}}]}]

# Menu
execute if score <returned> variable matches 0 if score @s pose matches 1.. run return run function pandamium:triggers/pose/print_menu

# Check if can run
execute if score <returned> variable matches 0 if predicate pandamium:in_spawn unless score @s staff_perms matches 3.. run return run tellraw @s [{text:"[Pose]",color:"dark_red"},{text:" You cannot use this trigger at spawn!",color:"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] run return run tellraw @s [{text:"[Pose]",color:"dark_red"},{text:" You cannot use this trigger in spectator mode!",color:"red"}]

execute unless score @s staff_perms matches 1.. run scoreboard players set @s[scores={pose=-403}] pose 0
scoreboard players operation <pose> variable = @s pose
execute anchored eyes positioned ^ ^ ^ summon snowball run function pandamium:triggers/pose/as_raycast

execute if score <returned> variable matches 1 if score <sound> variable matches 1.. run function pandamium:triggers/pose/sound
execute if score <returned> variable matches 0 run tellraw @s [{text:"[Pose] ",color:"dark_red"},{text:"That is not a valid option!",color:"red"}]

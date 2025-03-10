# restrictions
execute unless score @s gameplay_perms matches 6.. run return run tellraw @s [{text:"[Particles]",color:"dark_red"},{storage:"pandamium:dictionary",nbt:"triggers.supporter_only_trigger",interpret:true},{text:"\n This command would let you choose trails, banners emotes, and death/hurt effects!",color:"gray"}]

# menu
execute if score @s particles matches 1.. run return run function pandamium:triggers/particles/print_menu/main

# change
execute if score @s particles matches -999..-1 store result storage pandamium:local function."pandamium:triggers/particles/*".type int -1 run scoreboard players get @s particles
execute if score @s particles matches -999..-1 run return run function pandamium:triggers/particles/change_particle/trail with storage pandamium:local function."pandamium:triggers/particles/*"
execute if score @s particles matches -1999..-1001 run return run function pandamium:triggers/particles/change_particle/damage_effect

# else
tellraw @s [{text:"[Particles]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

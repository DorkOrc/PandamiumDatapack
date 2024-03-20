kill

execute at @s run particle cloud ~ ~0.6 ~ 0.125 0.125 0.125 0 5
execute as @s run loot spawn ~ ~0.5 ~ loot {pools:[{rolls:1,entries:[{type:"item",name:"tnt"}]}]}

execute if entity @s[type=tnt_minecart] at @s run summon minecart

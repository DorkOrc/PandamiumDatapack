execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message
execute unless score @s gameplay_perms matches 5.. run scoreboard players reset @s particles
execute unless score @s gameplay_perms matches 5.. run scoreboard players reset @s active_particles

# Menu
execute if score @s particles matches 1.. run tellraw @s [{"text":"Donator Particles Menu:","color":"aqua","bold":true}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"1: ","color":"green","bold":false},{"text":"[Glint]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -1"}},{"text":"2: ","color":"green","bold":false},{"text":"[Dragon Breath]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -2"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"3: ","color":"green","bold":false},{"text":"[End Rod]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -3"}},{"text":"4: ","color":"green","bold":false},{"text":"[Flames]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -4"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"5: ","color":"green","bold":false},{"text":"[Musical Notes]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -5"}},{"text":"6: ","color":"green","bold":false},{"text":"[Soul Fire Flames]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -6"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"7: ","color":"green","bold":false},{"text":"[Souls]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -7"}},{"text":"8: ","color":"green","bold":false},{"text":"[Hearts]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -8"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"9: ","color":"green","bold":false},{"text":"[Angry Clouds]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -9"}},{"text":"10: ","color":"green","bold":false},{"text":"[Witch]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -10"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"11: ","color":"green","bold":false},{"text":"[Crit Hits]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -11"}},{"text":"12: ","color":"green","bold":false},{"text":"[Firework Sparks]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -12"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"13: ","color":"green","bold":false},{"text":"[Void Fog]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -13"}},{"text":"14: ","color":"green","bold":false},{"text":"[Totem of Undying]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -14"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"15: ","color":"green","bold":false},{"text":"[Redstone Dust]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -15"}},{"text":"16: ","color":"green","bold":false},{"text":"[Popping Bubbles]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -16"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"17: ","color":"green","bold":false},{"text":"[Ash]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -17"}},{"text":"18: ","color":"green","bold":false},{"text":"[White Ash]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -18"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"19: ","color":"green","bold":false},{"text":"[Crying Obsidian]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -19"}},{"text":"20: ","color":"green","bold":false},{"text":"[Slime]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -20"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"21: ","color":"green","bold":false},{"text":"[Rainbow Puffs]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -21"}},{"text":"22: ","color":"green","bold":false},{"text":"[Rainbow Swirls]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -22"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"23: ","color":"green","bold":false},{"text":"[Snow Cloud]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -23"}},{"text":"24: ","color":"green","bold":false},{"text":"[Smoke]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -24"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"25: ","color":"green","bold":false},{"text":"[Conduit Eyes]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -25"}},{"text":"26: ","color":"green","bold":false},{"text":"[Nectar]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -26"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"27: ","color":"green","bold":false},{"text":"[Warped Spores]  ","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -27"}},{"text":"28: ","color":"green","bold":false},{"text":"[Squid Ink]","color":"aqua","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -28"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"29: ","color":"green","bold":false},{"text":"[Angel]  ","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -29"}},{"text":"30: ","color":"green","bold":false},{"text":"[Devil]","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -30"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"31: ","color":"green","bold":false},{"text":"[Olex]  ","color":"dark_red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -31"}},{"text":"32: ","color":"green","bold":false},{"text":"[Tears]","color":"blue","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -32"}}]
execute if score @s particles matches 1.. run tellraw @s [{"text":"100: ","color":"green","bold":false},{"text":"[None]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger particles set -100"}}]

# Reset
execute if score @s particles matches -100 if score @s active_particles matches 1.. run tellraw @s {"text":"Disabled particle effects.","color":"green"}
execute if score @s particles matches -100 unless score @s active_particles matches 1.. run tellraw @s {"text":"Error: You do not have any particle effects enabled.","color":"red"}
execute if score @s particles matches -100 run scoreboard players reset @s active_particles
execute if score @s particles matches -100 run scoreboard players reset @s particles

# Set Particle
scoreboard players set @s temp_1 0
execute if score @s particles matches -32..-1 run scoreboard players set @s temp_1 1
execute if score @s particles matches -50 run scoreboard players set @s temp_1 1

execute if score @s temp_1 matches 1 run scoreboard players set @s temp_2 -1
execute if score @s temp_1 matches 1 run scoreboard players operation @s active_particles = @s particles
execute if score @s temp_1 matches 1 run scoreboard players operation @s active_particles *= @s temp_2
execute if score @s temp_1 matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Particles]","color":"dark_green"},{"text":"Enabled","color":"aqua"}," particle ",{"score":{"name":"@s","objective":"active_particles"},"color":"aqua","italic":false},"."]

# Error if invalid particle number
execute if score @s temp_1 matches 0 if score @s particles matches ..-1 if score @s particles = @s particles run tellraw @s [{"text":"","color":"red"},{"text":"[Particles]","color":"dark_red"}," You cannot enable that particle."]

scoreboard players reset @s particles
scoreboard players enable @s particles

execute if score @s vote_shop matches 1 run scoreboard players add @s vote_credits 0
execute if score @s vote_shop matches 1 run tellraw @s [{"text":"Vote Shop:","color":"aqua","bold":true}]
execute if score @s vote_shop matches 1 run tellraw @s [{"text":"You currently have ","color":"green","italic":true},{"score":{"name":"@s","objective":"vote_credits"},"color":"aqua","italic":false}," credits."]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"1: ","color":"green"},[{"text":"[1 Diamond]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"3 Vote Credits","color":"green"}]}}]],[{"text":"2: ","color":"green"},[{"text":"[5 Experience Bottles]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"1 Vote Credit","color":"green"}]}}]]]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"3: ","color":"green"},[{"text":"[1 Golden Apple]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"1 Vote Credit","color":"green"}]}}]],[{"text":"4: ","color":"green"},[{"text":"[1 Endermite Spawn Egg]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -4"},"hoverEvent":{"action":"show_text","contents":[{"text":"1 Vote Credit","color":"green"}]}}]]]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"5: ","color":"green"},[{"text":"[1 Mending Book]  ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -5"},"hoverEvent":{"action":"show_text","contents":[{"text":"25 Vote Credits","color":"green"}]}}]],[{"text":"6: ","color":"green"},[{"text":"[1 Enchanted Golden Apple]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -6"},"hoverEvent":{"action":"show_text","contents":[{"text":"50 Vote Credits","color":"green"}]}}]]]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"7: ","color":"green"},[{"text":"[A Random Player's Head]  ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -7"},"hoverEvent":{"action":"show_text","contents":[{"text":"20 Vote Credits","color":"green"}]}}]],[{"text":"8: ","color":"green"},[{"text":"[Your Head]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -8"},"hoverEvent":{"action":"show_text","contents":[{"text":"100 Vote Credits","color":"green"}]}}]]]

scoreboard players operation @s temp_1 = @s vote_credits
execute store result score @s temp_2 run data get entity @s Inventory
execute if data entity @s Inventory[{Slot:100b}] run scoreboard players remove @s temp_2 1
execute if data entity @s Inventory[{Slot:101b}] run scoreboard players remove @s temp_2 1
execute if data entity @s Inventory[{Slot:102b}] run scoreboard players remove @s temp_2 1
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players remove @s temp_2 1
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove @s temp_2 1

execute if score @s vote_shop matches -1 if score @s temp_2 matches ..35 if score @s vote_credits matches 3.. run give @s minecraft:diamond 1
execute if score @s vote_shop matches -1 if score @s temp_2 matches ..35 if score @s vote_credits matches 3.. run scoreboard players remove @s vote_credits 3

execute if score @s vote_shop matches -2 if score @s temp_2 matches ..35 if score @s vote_credits matches 1.. run give @s minecraft:experience_bottle 5
execute if score @s vote_shop matches -2 if score @s temp_2 matches ..35 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -3 if score @s temp_2 matches ..35 if score @s vote_credits matches 1.. run give @s minecraft:golden_apple 1
execute if score @s vote_shop matches -3 if score @s temp_2 matches ..35 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -4 if score @s temp_2 matches ..35 if score @s vote_credits matches 1.. run give @s minecraft:endermite_spawn_egg{EntityTag:{PlayerSpawned:1b}} 1
execute if score @s vote_shop matches -4 if score @s temp_2 matches ..35 if score @s vote_credits matches 1.. run scoreboard players remove @s vote_credits 1

execute if score @s vote_shop matches -5 if score @s temp_2 matches ..35 if score @s vote_credits matches 25.. run give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1}]} 1
execute if score @s vote_shop matches -5 if score @s temp_2 matches ..35 if score @s vote_credits matches 25.. run scoreboard players remove @s vote_credits 25

execute if score @s vote_shop matches -6 if score @s temp_2 matches ..35 if score @s vote_credits matches 50.. run give @s minecraft:enchanted_golden_apple 1
execute if score @s vote_shop matches -6 if score @s temp_2 matches ..35 if score @s vote_credits matches 50.. run scoreboard players remove @s vote_credits 50

execute if score @s vote_shop matches -7 if score @s temp_2 matches ..35 if score @s vote_credits matches 20.. at @s as @r run loot give @p loot pandamium:head
execute if score @s vote_shop matches -7 if score @s temp_2 matches ..35 if score @s vote_credits matches 20.. run scoreboard players remove @s vote_credits 20

execute if score @s vote_shop matches -8 if score @s temp_2 matches ..35 if score @s vote_credits matches 100.. run loot give @s loot pandamium:head
execute if score @s vote_shop matches -8 if score @s temp_2 matches ..35 if score @s vote_credits matches 100.. run scoreboard players remove @s vote_credits 100

execute if score @s vote_shop matches -10..-9 run scoreboard players set @s temp_2 0

execute if score @s temp_2 matches ..35 if score @s vote_shop matches ..-1 unless score @s vote_credits = @s temp_1 run tellraw @s [{"text":"","color":"green"},{"text":"[Vote Shop]","color":"dark_green"}," Purchase successful! You have ",{"score":{"name":"@s","objective":"vote_credits"},"color":"aqua"}," vote credits left!"]
execute if score @s temp_2 matches ..35 if score @s vote_shop matches ..-1 if score @s vote_credits = @s temp_1 unless score @s temp_2 matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" You do not have enough vote credits!","color":"red"}]
execute unless score @s temp_2 matches ..35 if score @s vote_shop matches ..-1 unless score @s vote_shop matches -10..-9 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" Your inventory is full!","color":"red"}]

scoreboard players reset @s vote_shop
scoreboard players enable @s vote_shop


#display menu
scoreboard players add @s vote_credits 0
execute if score @s vote_shop matches 1 run tellraw @s [{"text":"Vote Shop!","color":"aqua","bold":true}]
execute if score @s vote_shop matches 1 run tellraw @s ["",{"text":"Vote Credits:","color":"green"}," ",{"score":{"name":"@s","objective":"vote_credits"},"color":"aqua"}]

#execute if score @s vote_shop matches 1 run tellraw @s [{"text":"You currently have ","color":"green","italic":true},{"score":{"name":"@s","objective":"vote_credits"},"color":"aqua","italic":false}," credits."]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"1: ","color":"green"},[{"text":"[1 Diamond]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -1"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"1 Vote Credit\",\"italic\":false,\"bold\":true,\"color\":\"green\"}'},Items:[{id:\"minecraft:diamond\",Count:1b}]}"}}}]],[{"text":"2: ","color":"green"},[{"text":"[5 Experience Bottles]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -2"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"1 Vote Credit\",\"italic\":false,\"bold\":true,\"color\":\"green\"}'},Items:[{id:\"minecraft:experience_bottle\",Count:5b}]}"}}}]]]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"3: ","color":"green"},[{"text":"[1 Golden Apple]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -3"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"1 Vote Credit\",\"italic\":false,\"bold\":true,\"color\":\"green\"}'},Items:[{id:\"minecraft:golden_apple\",Count:1b}]}"}}}]],[{"text":"4: ","color":"green"},[{"text":"[1 Endermite Spawn Egg]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -4"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"1 Vote Credit\",\"italic\":false,\"bold\":true,\"color\":\"green\"}'},Items:[{id:\"minecraft:endermite_spawn_egg\",Count:1b}]}"}}}]]]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"5: ","color":"green"},[{"text":"[1 Mending Book]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -5"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"25 Vote Credits\",\"italic\":false,\"bold\":true,\"color\":\"green\"}'},Items:[{id:\"minecraft:enchanted_book\",Count:1b,tag:{StoredEnchantments:[{id:\"minecraft:mending\",lvl:1s}]}}]}"}}}]],[{"text":"6: ","color":"green"},[{"text":"[1 Enchanted Golden Apple]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -6"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"50 Vote Credits\",\"italic\":false,\"bold\":true,\"color\":\"green\"}'},Items:[{id:\"minecraft:enchanted_golden_apple\",Count:1b}]}"}}}]]]
execute if score @s vote_shop matches 1 run tellraw @s [[{"text":"7: ","color":"green"},[{"text":"[A Random Player's Head]  ","color":"gold","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -7"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"20 Vote Credits\",\"italic\":false,\"bold\":true,\"color\":\"green\"}',Lore:['{\"text\":\"Requires At Least 10 Online Players\",\"italic\":false}']},Items:[{id:\"minecraft:player_head\",Count:1b,tag:{SkullOwner:\"MHF_Question\"}}]}"}}}]],[{"text":"8: ","color":"green"},[{"text":"[Your Head]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -8"},"hoverEvent":{"action":"show_item","contents":{"id":"minecraft:bundle","tag":"{display:{Name:'{\"text\":\"100 Vote Credits\",\"italic\":false,\"bold\":true,\"color\":\"green\"}'},Items:[{id:\"minecraft:player_head\",Count:1b,tag:{SkullOwner:\"MHF_Exclamation\"}}]}"}}}]]]
execute if score @s vote_shop matches 1 run tellraw @s [ [{"text":"9: ","color":"green"},[{"text":"[Spawn A Shulker]  ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger vote_shop set -9"},"hoverEvent":{"action":"show_text","value":{"text":"10 Vote Credits","bold":true,"color":"green"}}}]] ]

#count filled inventory slots
execute store success score <gives_item> variable if score @s vote_shop matches ..-1

execute if score @s vote_shop matches -9 run scoreboard players set <gives_item> variable 0

scoreboard players set <filled_inventory_slots> variable 0
execute if score <gives_item> variable matches 1 store result score <filled_inventory_slots> variable run data get entity @s Inventory
execute if score <gives_item> variable matches 1 if data entity @s Inventory[{Slot:100b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if score <gives_item> variable matches 1 if data entity @s Inventory[{Slot:101b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if score <gives_item> variable matches 1 if data entity @s Inventory[{Slot:102b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if score <gives_item> variable matches 1 if data entity @s Inventory[{Slot:103b}] run scoreboard players remove <filled_inventory_slots> variable 1
execute if score <gives_item> variable matches 1 if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove <filled_inventory_slots> variable 1

#get price
execute if score @s vote_shop matches -1 run scoreboard players set <cost> variable 3
execute if score @s vote_shop matches -2 run scoreboard players set <cost> variable 1
execute if score @s vote_shop matches -3 run scoreboard players set <cost> variable 1
execute if score @s vote_shop matches -4 run scoreboard players set <cost> variable 1
execute if score @s vote_shop matches -5 run scoreboard players set <cost> variable 25
execute if score @s vote_shop matches -6 run scoreboard players set <cost> variable 50
execute if score @s vote_shop matches -7 run scoreboard players set <cost> variable 20
execute if score @s vote_shop matches -8 run scoreboard players set <cost> variable 100
execute if score @s vote_shop matches -9 run scoreboard players set <cost> variable 20

#catch errors (check if player can buy)
execute store success score <can_buy> variable if score @s vote_shop matches ..-1
execute if score @s vote_shop matches ..-1 if score @s vote_shop matches ..-10 run scoreboard players set <can_buy> variable 0
execute if score @s vote_shop matches ..-1 if score @s vote_credits < <cost> variable run scoreboard players set <can_buy> variable 0
execute if score @s vote_shop matches ..-1 if score @s vote_shop matches -7 unless score <player_count> variable matches 10.. run scoreboard players set <can_buy> variable 0
execute if score @s vote_shop matches ..-1 if score @s vote_shop matches -9 in minecraft:overworld if entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] run scoreboard players set <can_buy> variable 0
execute if score @s vote_shop matches ..-1 if score @s vote_shop matches -9 in minecraft:the_nether if entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] run scoreboard players set <can_buy> variable 0
execute if score @s vote_shop matches ..-1 if score <filled_inventory_slots> variable matches 36.. run scoreboard players set <can_buy> variable 0

#give item
execute if score @s vote_shop matches -1 if score <can_buy> variable matches 1 run give @s minecraft:diamond 1
execute if score @s vote_shop matches -2 if score <can_buy> variable matches 1 run give @s minecraft:experience_bottle 5
execute if score @s vote_shop matches -3 if score <can_buy> variable matches 1 run give @s minecraft:golden_apple 1
execute if score @s vote_shop matches -4 if score <can_buy> variable matches 1 run give @s minecraft:endermite_spawn_egg{EntityTag:{PlayerSpawned:1b}} 1
execute if score @s vote_shop matches -5 if score <can_buy> variable matches 1 run give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1}]} 1
execute if score @s vote_shop matches -6 if score <can_buy> variable matches 1 run give @s minecraft:enchanted_golden_apple 1

execute if score @s vote_shop matches -7 if score <can_buy> variable matches 1 run tag @s add running_trigger
execute if score @s vote_shop matches -7 if score <can_buy> variable matches 1 as @r run loot give @p[tag=running_trigger] loot pandamium:head
execute if score @s vote_shop matches -7 if score <can_buy> variable matches 1 run tag @s remove running_trigger

execute if score @s vote_shop matches -8 if score <can_buy> variable matches 1 run loot give @s loot pandamium:head
execute if score @s vote_shop matches -9 if score <can_buy> variable matches 1 at @s run summon shulker ~ ~ ~ {Color:16b}

#take credits
execute if score @s vote_shop matches ..-1 if score <can_buy> variable matches 1 run scoreboard players operation @s vote_credits -= <cost> variable

#display success
execute if score @s vote_shop matches ..-1 if score <can_buy> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Vote Shop]","color":"dark_green"}," ",{"text":"Purchase successful!","color":"aqua"}," You have ",{"score":{"name":"@s","objective":"vote_credits"},"color":"aqua"}," vote credits left!"]

#display an error message
execute if score @s vote_shop matches ..-1 run scoreboard players set <displayed_error> variable 0
execute if score @s vote_shop matches ..-1 if score <can_buy> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches ..-10 run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," This is not an item in the vote shop!"]
execute if score @s vote_shop matches ..-1 if score <can_buy> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_credits < <cost> variable run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," You do not have enough vote credits!"]
execute if score @s vote_shop matches ..-1 if score <can_buy> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -7 unless score <player_count> variable matches 10.. run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," There must be at least 10 players online for you to buy this!"]
execute if score @s vote_shop matches ..-1 if score <can_buy> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_shop matches -9 if entity @s[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000] run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," You cannot buy this item at spawn! It spawns a shulker at your location."]
execute if score @s vote_shop matches ..-1 if score <can_buy> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <gives_item> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," Your inventory is full!"]

#
scoreboard players reset @s vote_shop
scoreboard players enable @s vote_shop

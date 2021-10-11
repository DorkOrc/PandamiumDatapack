# Check for confirmation message
scoreboard players set <conf_message> variable 1
execute unless score @s vote_shop matches -106 unless score @s vote_shop matches -112..-110 run scoreboard players set <conf_message> variable 0
execute if score <conf_message> variable matches 1 run scoreboard players add @s vote_shop 100

# Count filled inventory slots
scoreboard players set <gives_item> variable 0
execute unless score @s vote_shop matches -9 unless score @s vote_shop matches -12 run scoreboard players set <gives_item> variable 1
execute if score <gives_item> variable matches 1 run function pandamium:misc/count_filled_inventory_slots

# Get price
scoreboard players set <cost> variable 0
execute if score @s vote_shop matches -1 run scoreboard players set <cost> variable 3
execute if score @s vote_shop matches -2 run scoreboard players set <cost> variable 1
execute if score @s vote_shop matches -3 run scoreboard players set <cost> variable 1
execute if score @s vote_shop matches -4 run scoreboard players set <cost> variable 1
execute if score @s vote_shop matches -5 run scoreboard players set <cost> variable 10
execute if score @s vote_shop matches -6 run scoreboard players set <cost> variable 50
execute if score @s vote_shop matches -7 run scoreboard players set <cost> variable 8
execute if score @s vote_shop matches -8 run scoreboard players set <cost> variable 3
execute if score @s vote_shop matches -9 run scoreboard players set <cost> variable 20
execute if score @s vote_shop matches -10 run scoreboard players set <cost> variable 100
execute if score @s vote_shop matches -11 run scoreboard players set <cost> variable 10
execute if score @s vote_shop matches -12 run scoreboard players set <cost> variable 25
execute if score @s vote_shop matches -13 run scoreboard players set <cost> variable 1

# Catch errors (check if player can buy)
execute store success score <can_buy> variable if score @s vote_shop matches -13..-1

execute if score <can_buy> variable matches 1 if score @s jailed matches 1.. run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if entity @s[gamemode=spectator] run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score <gives_item> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s vote_credits < <cost> variable run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s vote_shop matches -9 unless score <player_count> variable matches 10.. run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s vote_shop matches -11 if score @s in_spawn matches 1 run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s vote_shop matches -13 run function pandamium:misc/vote_shop/check_can_break_bedrock

# Print confirmation message
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 1 if score @s vote_shop matches -6 run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," Are you sure you want to spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true},{"text":" vote credits","bold":true}," on ",{"text":"1 Enchanted Golden Apple","bold":true},"? ",{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_green"},"Click to Buy ",{"text":"1 Enchanted Golden Apple","bold":true},"\nand Spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true}," Vote Credits"]},"clickEvent":{"action":"run_command","value":"/trigger vote_shop set -6"}}]
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 1 if score @s vote_shop matches -10 run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," Are you sure you want to spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true},{"text":" vote credits","bold":true}," on ",{"text":"Your Head","bold":true},"? ",{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_green"},"Click to Buy ",{"text":"Your Head","bold":true},"\nand Spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true}," Vote Credits"]},"clickEvent":{"action":"run_command","value":"/trigger vote_shop set -10"}}]
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 1 if score @s vote_shop matches -11 run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," Are you sure you want to spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true},{"text":" vote credits","bold":true}," on ",{"text":"A Shulker","bold":true},"? ",{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_green"},"Click to Spawn ",{"text":"A Shulker","bold":true},"\nand Spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true}," Vote Credits"]},"clickEvent":{"action":"run_command","value":"/trigger vote_shop set -11"}}]
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 1 if score @s vote_shop matches -12 run tellraw @s [{"text":"","color":"red"},{"text":"[Vote Shop]","color":"dark_red"}," Are you sure you want to spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true},{"text":" vote credits","bold":true}," on ",{"text":"Caves & Cliffs Loot Bundle","bold":true},"? ",{"text":"[✔]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"","color":"dark_green"},"Click to Spawn ",{"text":"Caves & Cliffs Loot Bundle","bold":true},"\nand Spend ",{"score":{"name":"<cost>","objective":"variable"},"bold":true}," Vote Credits"]},"clickEvent":{"action":"run_command","value":"/trigger vote_shop set -12"}}]

# Give item
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 0 run function pandamium:misc/vote_shop/give_vote_shop_reward

# Take credits
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 0 run scoreboard players operation @s vote_credits -= <cost> variable

# Display success
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 0 if score @s vote_credits matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Vote Shop]","color":"dark_green"}," ",{"text":"Purchase successful!","color":"aqua"}," You have ",{"text":"1","bold":true,"color":"aqua"}," vote credit! ",[{"text":"(-","color":"red"},{"score":{"objective":"variable","name":"<cost>"},"bold":true},")"]]
execute if score <can_buy> variable matches 1 if score <conf_message> variable matches 0 unless score @s vote_credits matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Vote Shop]","color":"dark_green"}," ",{"text":"Purchase successful!","color":"aqua"}," You have ",{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}," vote credits! ",[{"text":"(-","color":"red"},{"score":{"objective":"variable","name":"<cost>"},"bold":true},")"]]

# Display an error message
execute if score <can_buy> variable matches 0 run function pandamium:misc/vote_shop/display_error_message

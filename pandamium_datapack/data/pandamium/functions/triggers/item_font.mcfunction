# run IN pandamium:staff_world

data modify storage pandamium:temp NBT set from entity @s

execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message

# Menu
execute if score @s gameplay_perms matches 6.. if score @s item_font matches 1.. run function pandamium:misc/item_font/menu

# Catch Errors (check if item can be modified)
execute store success score <can_run> variable if score @s item_font matches -36..-1

execute unless score @s gameplay_perms matches 6.. run scoreboard players set <can_run> variable 0
execute unless data storage pandamium:temp NBT.SelectedItem.tag.display.Name run scoreboard players set <can_run> variable 0
execute if entity @s[gamemode=spectator] run scoreboard players set <can_run> variable 0

# Do Edit
execute if score <can_run> variable matches 1 run function pandamium:misc/item_font/do_edit

# Display an error message
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 run scoreboard players set <displayed_error> variable 0
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score @s item_font matches -36..-1 run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," This is not a valid option!"]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless data storage pandamium:temp NBT.SelectedItem run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," There is no item in your main hand!"]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless data storage pandamium:temp NBT.SelectedItem.tag.display.Name run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," The item in your main hand has no custom name! Name the item using an anvil to change its font."]
execute if score @s gameplay_perms matches 6.. if score @s item_font matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <different_name> variable matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Item Font]","color":"dark_red"}," Nothing changed!"]

scoreboard players reset @s item_font
scoreboard players enable @s item_font

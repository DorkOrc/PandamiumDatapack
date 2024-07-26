execute store success score <feet_slot_filled> variable if items entity @s armor.feet *
execute store success score <legs_slot_filled> variable if items entity @s armor.legs *
execute store success score <chest_slot_filled> variable if items entity @s armor.chest *
execute store success score <head_slot_filled> variable if items entity @s armor.head *
execute store success score <offhand_slot_filled> variable if items entity @s weapon.offhand *
execute store success score <mainhand_slot_filled> variable if items entity @s weapon.mainhand *

scoreboard players set <filled_inventory_slots> variable 0
execute unless predicate pandamium:player/can_pick_up_any_item run scoreboard players set <filled_inventory_slots> variable 36
execute if score <filled_inventory_slots> variable matches 36 run return run scoreboard players set <empty_inventory_slots> variable 0

execute if items entity @s container.0 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.1 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.2 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.3 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.4 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.5 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.6 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.7 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.8 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.9 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.10 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.11 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.12 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.13 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.14 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.15 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.16 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.17 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.18 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.19 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.20 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.21 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.22 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.23 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.24 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.25 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.26 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.27 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.28 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.29 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.30 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.31 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.32 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.33 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.34 * run scoreboard players add <filled_inventory_slots> variable 1
execute if items entity @s container.35 * run scoreboard players add <filled_inventory_slots> variable 1

scoreboard players set <empty_inventory_slots> variable 36
scoreboard players operation <empty_inventory_slots> variable -= <filled_inventory_slots> variable

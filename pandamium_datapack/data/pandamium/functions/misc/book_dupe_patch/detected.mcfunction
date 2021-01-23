tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",{"selector":"@s","color":"gray"}," was jailed for ",{"text":"book duping","bold":true},"."]
scoreboard players set @s jailed 1
scoreboard players set @s cheater 1

data modify storage pandamium:book_dupe detections append value {}

execute if score <hand> variable matches 1 run data modify storage pandamium:book_dupe detections[-1].book set from entity @s SelectedItem.tag
execute if score <hand> variable matches 0 run data modify storage pandamium:book_dupe detections[-1].book set from entity @s Inventory[{Slot:-106b}].tag

execute if score <hand> variable matches 1 run item entity @s weapon replace air
execute if score <hand> variable matches 0 run item entity @s weapon.offhand replace air

data remove storage pandamium:book_dupe detections[-1].book.pages

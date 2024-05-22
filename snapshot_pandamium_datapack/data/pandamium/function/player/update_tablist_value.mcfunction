scoreboard players set @s tablist_value -1
execute unless score @s hide_tablist_value matches 1 run scoreboard players operation @s tablist_value = @s votes

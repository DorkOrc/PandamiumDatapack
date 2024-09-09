execute unless score @s hide_tablist_value matches 1 run scoreboard players operation @s tablist_value = @s votes
execute unless score @s hide_tablist_value matches 1 run scoreboard players display numberformat @s tablist_value styled {"color":"yellow"}

execute if score @s hide_tablist_value matches 1 run scoreboard players set @s tablist_value -1
execute if score @s hide_tablist_value matches 1 run scoreboard players display numberformat @s tablist_value blank

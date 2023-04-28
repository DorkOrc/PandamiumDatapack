tag @s add source

execute unless score @s staff_perms matches 1.. run scoreboard players set @s vote 1

execute if score @s vote matches 2.. run scoreboard players operation <target_id> variable = @s vote
execute if score @s vote matches 2.. as @a if score @s id = <target_id> variable run function pandamium:impl/triggers/vote/print_target_votes

execute if score @s vote matches 1 run function pandamium:impl/triggers/vote/print_links_menu

tag @a remove target
tag @s remove source
scoreboard players reset @s vote
scoreboard players enable @s vote

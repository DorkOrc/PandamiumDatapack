tag @s add doing_trigger

execute if score @p[tag=doing_trigger] get_guidebook matches 1 run function pandamium:misc/give_guidebook
execute if score @p[tag=doing_trigger] get_guidebook matches 1 run tellraw @p[tag=doing_trigger] [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," You got a guidebook!"]

execute if score @p[tag=doing_trigger] get_guidebook matches 2.. as @a if score @s id = @p[tag=doing_trigger] get_guidebook run function pandamium:misc/give_guidebook
execute if score @p[tag=doing_trigger] get_guidebook matches 2.. as @a if score @s id = @p[tag=doing_trigger] get_guidebook run tellraw @s [{"text":"","color":"green"},{"text":"[Info]","color":"blue"}," ",{"selector":"@p[tag=doing_trigger]"}," gave you a guidebook!"]
execute if score @p[tag=doing_trigger] get_guidebook matches 2.. as @a if score @s id = @p[tag=doing_trigger] get_guidebook run tellraw @p[tag=doing_trigger] [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," You gave ",{"selector":"@s"}," a guidebook!"]

tag @s remove doing_trigger
scoreboard players reset @s get_guidebook
scoreboard players enable @s get_guidebook

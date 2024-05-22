scoreboard players set @s parkour.has_fallen 1
execute unless data storage pandamium:queue entries[{action:"parkour.fall"}] run data modify storage pandamium:queue entries append value {action:"parkour.fall"}

scoreboard players set @s donator_migration_notice 0
tellraw @s [{"text":"[Migration Notice]","color":"dark_green"},[{"text":" You will no longer see the","color":"green"},{"text":" donator migration notice","color":"aqua"}," when you join!"]]

scoreboard players reset @s disable_donator_migration_notice

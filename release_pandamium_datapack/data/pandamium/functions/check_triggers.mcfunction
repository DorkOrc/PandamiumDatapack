execute as @a[scores={item_font=-2147483648..}] unless score @s item_font matches 0 at @s run function pandamium:triggers/item_font/main
execute as @a[scores={sign_font=-2147483648..}] unless score @s sign_font matches 0 at @s run function pandamium:triggers/sign_font/main
execute as @a[scores={world_info=-2147483648..}] unless score @s world_info matches 0 at @s run function pandamium:triggers/world_info
execute as @a[scores={rtp=-2147483648..}] unless score @s rtp matches 0 at @s run function pandamium:triggers/rtp
execute as @a[scores={disable_donator_migration_notice=-2147483648..}] unless score @s disable_donator_migration_notice matches 0 at @s run function pandamium:triggers/disable_donator_migration_notice

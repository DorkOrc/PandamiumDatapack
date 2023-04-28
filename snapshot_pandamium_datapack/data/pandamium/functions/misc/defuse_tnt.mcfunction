execute at @s run particle cloud ~ ~0.6 ~ 0.125 0.125 0.125 0 5
execute at @s if entity @s[type=tnt_minecart] run summon minecart
kill
execute at @s run loot spawn ~ ~0.5 ~ loot pandamium:tnt

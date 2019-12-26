execute if score @s tpa_cooldown matches 1.. run function pandamium:tpa/print_cooldown

execute unless score @s tpa_cooldown matches 1.. at @a if score @s tpa = @p id run function pandamium:tpa/send_request

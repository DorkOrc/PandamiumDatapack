## Styles
# enable booleans
execute if score <style> variable matches 1 run return run data modify storage pandamium:text result.bold set value true
execute if score <style> variable matches 2 if score @s item_font matches ..-1 run return run data remove storage pandamium:text result.italic
execute if score <style> variable matches 2 unless score @s item_font matches ..-1 run return run data modify storage pandamium:text result.italic set value true
execute if score <style> variable matches 3 run return run data modify storage pandamium:text result.underlined set value true
execute if score <style> variable matches 4 run return run data modify storage pandamium:text result.strikethrough set value true
execute if score <style> variable matches 5 if score @s sign_font matches ..-1 run return run data modify storage pandamium:text result.obfuscated set value true

# disable booleans
execute if score <style> variable matches 11 run return run data remove storage pandamium:text result.bold
execute if score <style> variable matches 12 if score @s item_font matches ..-1 run return run data modify storage pandamium:text result.italic set value false
execute if score <style> variable matches 12 unless score @s item_font matches ..-1 run return run data remove storage pandamium:text result.italic
execute if score <style> variable matches 13 run return run data remove storage pandamium:text result.underlined
execute if score <style> variable matches 14 run return run data remove storage pandamium:text result.strikethrough
execute if score <style> variable matches 15 if score @s sign_font matches ..-1 run return run data remove storage pandamium:text result.obfuscated

# fonts
execute if score <style> variable matches 21 run return run data remove storage pandamium:text result.font
execute if score <style> variable matches 22 run return run data modify storage pandamium:text result.font set value "minecraft:uniform"
execute if score <style> variable matches 23 run return run data modify storage pandamium:text result.font set value "minecraft:alt"
execute if score <style> variable matches 24 run return run data modify storage pandamium:text result.font set value "minecraft:illageralt"

# custom fonts
execute if score <style> variable matches 31 run return run function pandamium:impl/font/custom_styles/reset
execute if score <style> variable matches 32 run return run function pandamium:impl/font/custom_styles/rainbow/main

## Colours
scoreboard players operation <colour> variable = <style> variable
scoreboard players operation <colour> variable %= #100 constant

# solid
execute if score <style> variable matches 101..199 run function pandamium:impl/font/get_colour
execute if score <style> variable matches 101..199 if score <valid_option> variable matches 1 run return run function pandamium:impl/font/apply_style/solid_color

# gradient
execute if score <style> variable matches 201..299 run function pandamium:impl/font/get_colour
execute if score <style> variable matches 201..299 if score <valid_option> variable matches 1 run return run function pandamium:impl/font/apply_style/gradient_colour

## Else
return -1

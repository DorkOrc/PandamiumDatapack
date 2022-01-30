# run IN pandamium:staff_world

scoreboard players set <valid_option> variable 0
setblock 0 0 0 air

# Styles/Attributes (Enable)
execute if score <font> variable matches 1 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"bold":true}'}
execute if score <font> variable matches 2 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"italic":true}'}
execute if score <font> variable matches 3 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"underlined":true}'}
execute if score <font> variable matches 4 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"strikethrough":true}'}
execute if score <font> variable matches 5 if score @s sign_font matches ..-1 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"obfuscated":true}'}

# Styles/Attributes (Disable)
execute if score <font> variable matches 21 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"bold":false}'}
execute if score <font> variable matches 22 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"italic":false}'}
execute if score <font> variable matches 23 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"underlined":false}'}
execute if score <font> variable matches 24 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"strikethrough":false}'}
execute if score <font> variable matches 25 if score @s sign_font matches ..-1 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"obfuscated":false}'}

# Fonts
execute if score <font> variable matches 41 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"default"}'}
execute if score <font> variable matches 42 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"uniform"}'}
execute if score <font> variable matches 43 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"alt"}'}
execute if score <font> variable matches 44 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"font":"illageralt"}'}

# Colours
execute if score <font> variable matches 50 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#ffffff"}'}
execute if score <font> variable matches 51 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#555555"}'}
execute if score <font> variable matches 52 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#ff0000"}'}
execute if score <font> variable matches 53 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#ff7f00"}'}
execute if score <font> variable matches 54 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#ffff00"}'}
execute if score <font> variable matches 55 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#00ff00"}'}
execute if score <font> variable matches 56 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#00ffff"}'}
execute if score <font> variable matches 57 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#007fff"}'}
execute if score <font> variable matches 58 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#0000ff"}'}
execute if score <font> variable matches 59 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7f00ff"}'}
execute if score <font> variable matches 60 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#ff00ff"}'}
execute if score <font> variable matches 61 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#ff007f"}'}

execute if score <font> variable matches 62 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#aaaaaa"}'}
execute if score <font> variable matches 63 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#000000"}'}
execute if score <font> variable matches 64 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7f0000"}'}
execute if score <font> variable matches 65 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7f3f00"}'}
execute if score <font> variable matches 66 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7f7f00"}'}
execute if score <font> variable matches 67 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#007f00"}'}
execute if score <font> variable matches 68 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#007f7f"}'}
execute if score <font> variable matches 69 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#003f7f"}'}
execute if score <font> variable matches 70 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#00007f"}'}
execute if score <font> variable matches 71 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#3f007f"}'}
execute if score <font> variable matches 72 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7f007f"}'}
execute if score <font> variable matches 73 store success score <valid_option> variable run setblock 0 0 0 oak_sign{Text1:'{"nbt":"Text","storage":"pandamium:temp","interpret":true,"color":"#7f003f"}'}

# Check if name changed
execute store success score <text_changed> variable run data modify storage pandamium:temp Text set from block 0 0 0 Text1

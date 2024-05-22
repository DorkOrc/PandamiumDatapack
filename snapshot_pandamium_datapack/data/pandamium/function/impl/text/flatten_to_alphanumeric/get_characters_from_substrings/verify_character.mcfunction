# arguments: this_character

$execute if data storage pandamium:dictionary {alphanumeric_allowed:["$(this_character)"]} run return 0

$execute store success score <changed> variable run data modify storage pandamium:templates macro.this_character.this_character set from storage pandamium:dictionary alphanumeric_replacements[{replace:["$(this_character)"]}].character
execute if score <changed> variable matches 0 run data modify storage pandamium:templates macro.this_character.this_character set value '_'

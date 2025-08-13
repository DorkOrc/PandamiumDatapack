# arguments: character

$execute unless data storage pandamium:dictionary surrogate_pairs.high."$(character)" run return 0

data modify storage pandamium:templates macro.character2.character2 set string storage pandamium:text substrings[0] 1 2
execute store result score <surrogate_pair_exists> variable run function pandamium:impl/text/get_characters/get_characters_from_substrings/check_low_surrogate with storage pandamium:templates macro.character2
execute if score <surrogate_pair_exists> variable matches 0 run return 0

data modify storage pandamium:templates macro.character.character set string storage pandamium:text substrings[0] 0 2
data modify storage pandamium:text substrings[0] set string storage pandamium:text substrings[0] 1
return 1

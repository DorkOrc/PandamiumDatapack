# arguments: this_character

# replace non-alphanumeric characters
$execute store success score <allowed> variable if data storage pandamium:dictionary {alphanumeric_allowed:["$(this_character)"]}
execute if score <allowed> variable matches 0 run data modify storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".this_character set value "_"
$execute if score <allowed> variable matches 0 run data modify storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".this_character set from storage pandamium:dictionary alphanumeric_replacements[{replace:["$(this_character)"]}].character

# concatenate character
function pandamium:impl/text/flatten_to_alphanumeric/concatenate_character with storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*"

# end the loop if there are no more characters left
execute unless data storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".characters[0] run return 1

# loop
data modify storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".this_character set from storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".characters[-1]
data remove storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*".characters[-1]
function pandamium:impl/text/flatten_to_alphanumeric/loop with storage pandamium:local functions."pandamium:impl/text/flatten_to_alphanumeric/*"

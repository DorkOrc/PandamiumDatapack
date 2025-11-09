# arguments: key_length

data remove storage pandamium:local functions."pandamium:impl/text/replace/*".check_key_body
$data modify storage pandamium:local functions."pandamium:impl/text/replace/*".check_key_body set string storage pandamium:local functions."pandamium:impl/text/replace/*".string 0 $(key_length)
execute store success score <found_key> variable run data modify storage pandamium:local functions."pandamium:impl/text/replace/*".check_key_body set from storage pandamium:local functions."pandamium:impl/text/replace/*".key_body

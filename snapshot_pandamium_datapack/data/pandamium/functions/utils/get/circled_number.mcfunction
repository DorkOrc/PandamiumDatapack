# arguments: value

data remove storage pandamium:temp circled_number
$data modify storage pandamium:temp circled_number set from storage pandamium:dictionary circled_number_characters[$(value)]
$execute unless data storage pandamium:temp circled_number run data modify storage pandamium:temp circled_number set value "($(value))"

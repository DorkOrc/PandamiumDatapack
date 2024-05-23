# arguments: json
$data modify storage pandamium:text compound set value $(json)
$execute unless data storage pandamium:text compound.text run data modify storage pandamium:text compound set value {text:$(json)}

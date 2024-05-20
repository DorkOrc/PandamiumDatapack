# arguments: dimension

data modify storage pandamium:temp dimension_name set value "A Custom Dimension"
$data modify storage pandamium:temp dimension_name set from storage pandamium:dictionary dimension.$(dimension).name

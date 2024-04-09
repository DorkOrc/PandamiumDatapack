# arguments: chr

data modify storage pandamium:temp test set value {}
$data modify storage pandamium:temp test."$(chr)" set value {}

# arguments: item

$execute unless items entity @s armor.head * run return run item replace entity @s armor.head with $(item)
$give @s $(item)

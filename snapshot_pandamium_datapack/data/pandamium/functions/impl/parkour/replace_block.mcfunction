# arguments: block

$execute at @s run setblock ~ ~ ~ $(block)

execute at @s align xyz run particle cloud ~.5 ~.5 ~.5 0 0.5 0 0.01 3
$execute at @s align xyz run particle block $(block) ~.5 ~.5 ~.5 0.5 0.5 0.5 0.1 10

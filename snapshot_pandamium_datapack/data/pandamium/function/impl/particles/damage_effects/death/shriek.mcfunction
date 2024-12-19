particle minecraft:shriek{delay:0}
particle minecraft:shriek{delay:5}
particle minecraft:shriek{delay:10}
particle minecraft:shriek{delay:15}
particle minecraft:shriek{delay:20}
particle minecraft:shriek{delay:25}
particle minecraft:shriek{delay:30}
particle minecraft:shriek{delay:35}
particle minecraft:shriek{delay:40}
particle minecraft:shriek{delay:45}

execute anchored eyes rotated 0 0 run particle minecraft:sculk_charge{roll:0f} ^ ^-0.5 ^ 0.2 0.5 0.2 0.1 20
execute anchored eyes rotated 0 0 run particle minecraft:sculk_charge_pop ^ ^-0.5 ^ 0.3 0.5 0.3 0.05 20

playsound minecraft:block.sculk_shrieker.shriek player @a[distance=..16] ~ ~ ~ 0.25 2

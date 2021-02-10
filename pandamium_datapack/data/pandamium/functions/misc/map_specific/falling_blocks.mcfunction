summon falling_block -109 71 0 {BlockState:{Name:"minecraft:netherrack"},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -109 72 0 {BlockState:{Name:"minecraft:fire"},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -14 67 -66 {BlockState:{Name:"minecraft:fire"},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -103 73 7 {BlockState:{Name:"minecraft:red_carpet"},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -103 73 -7 {BlockState:{Name:"minecraft:red_carpet"},NoGravity:1b,Time:1,DropItem:0b}

summon falling_block 4 62 32 {BlockState:{Name:"minecraft:big_dripleaf_stem",Properties:{facing:"west"}},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block 4 63 32 {BlockState:{Name:"minecraft:big_dripleaf",Properties:{facing:"west",tilt:"none"}},NoGravity:1b,Time:1,DropItem:0b}

summon falling_block 2 62 30 {BlockState:{Name:"minecraft:big_dripleaf_stem",Properties:{facing:"east"}},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block 2 63 30 {BlockState:{Name:"minecraft:big_dripleaf",Properties:{facing:"east",tilt:"none"}},NoGravity:1b,Time:1,DropItem:0b}

summon falling_block 0 63 32 {BlockState:{Name:"minecraft:big_dripleaf",Properties:{facing:"east",tilt:"none"}},NoGravity:1b,Time:1,DropItem:0b}

summon falling_block -10 59 -49 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"up"}},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -9 59 -48 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"frustum",vertical_direction:"up"}},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -9 60 -48 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"up"}},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -9 61 -49 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"frustum",vertical_direction:"down"}},NoGravity:1b,Time:1,DropItem:0b}
summon falling_block -9 60 -49 {BlockState:{Name:"minecraft:pointed_dripstone",Properties:{thickness:"tip",vertical_direction:"down"}},NoGravity:1b,Time:1,DropItem:0b}

schedule function pandamium:misc/map_specific/falling_blocks 600t

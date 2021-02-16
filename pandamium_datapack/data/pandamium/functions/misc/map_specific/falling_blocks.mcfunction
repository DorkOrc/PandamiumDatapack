execute unless entity @e[x=0,type=leash_knot,tag=spawn_scarecrow_leash_knot1] positioned 18 67 -94 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run summon leash_knot 18 67.38 -94 {Tags:["spawn_scarecrow_leash_knot1"]}
execute unless entity @e[x=0,type=leash_knot,tag=spawn_scarecrow_leash_knot2] positioned -40 69 -117 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run summon leash_knot -40 69.38 -117 {Tags:["spawn_scarecrow_leash_knot2"]}

schedule function pandamium:misc/map_specific/falling_blocks 600t

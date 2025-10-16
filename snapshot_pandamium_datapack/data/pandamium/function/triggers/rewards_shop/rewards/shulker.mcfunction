execute align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ #pandamium:mobs_cannot_suffocate_in run return run function pandamium:utils/fail_and_message {message: [{color:"dark_red",text:"[Rewards Shop]"},{color:"red",text:" That mob cannot be spawned here!"}] }

execute align xyz positioned ~0.5 ~ ~0.5 summon minecraft:shulker run data merge entity @s {Tags: ["unnatural"], Color: 16b}

return 1

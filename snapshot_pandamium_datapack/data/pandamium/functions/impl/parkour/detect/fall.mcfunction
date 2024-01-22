execute unless predicate pandamium:stepping_on_glowstone if score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/actions/return_to_last_checkpoint

advancement revoke @s only pandamium:detect/parkour/fall

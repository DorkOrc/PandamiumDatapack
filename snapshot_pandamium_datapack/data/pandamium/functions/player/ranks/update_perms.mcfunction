function pandamium:player/ranks/get_gameplay_rank

# Gameplay Perms
scoreboard players operation @s gameplay_perms = <gameplay_rank> variable
scoreboard players set @s[scores={donator_rank=1}] gameplay_perms 6
scoreboard players set @s[scores={vip_rank=1}] gameplay_perms 6
scoreboard players set @s[scores={staff_rank=2..}] gameplay_perms 6
scoreboard players set @s[scores={is_staff_alt=1,gameplay_perms=..2}] gameplay_perms 3

# Staff Perms
scoreboard players operation @s staff_perms = @s staff_rank

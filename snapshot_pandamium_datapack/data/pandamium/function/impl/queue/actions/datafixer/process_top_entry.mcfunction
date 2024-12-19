# arguments: username, (...)

$execute if score $(username) active_particles matches 1.. store result storage pandamium.db.players:io selected.entry.data.particles.trail.type short 1 run scoreboard players get $(username) active_particles
$execute if score $(username) death_particles matches 1.. store result storage pandamium.db.players:io selected.entry.data.particles.damage.type short 1 run scoreboard players get $(username) death_particles

function pandamium:utils/database/players/save

data remove storage pandamium:queue selected.entry.user_ids[-1]

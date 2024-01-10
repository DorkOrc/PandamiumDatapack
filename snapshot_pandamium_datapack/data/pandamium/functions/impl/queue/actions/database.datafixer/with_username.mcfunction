# arguments: username

$execute if score $(username) monthly_votes = $(username) monthly_votes run scoreboard players operation $(username) yearly_votes = $(username) monthly_votes
$execute if score $(username) monthly_playtime_ticks = $(username) monthly_playtime_ticks run scoreboard players operation $(username) yearly_playtime_ticks = $(username) monthly_playtime_ticks

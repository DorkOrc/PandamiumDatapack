bossbar set pandamium:leaderboards_refresh_progress name {"text":"[Leaderboards] queueing termination"}

$data modify storage pandamium:queue queue append value {action:"leaderboards/refresh/end",wait:$(index)}
data modify storage pandamium:queue queue[-1].type set from storage pandamium:temp type
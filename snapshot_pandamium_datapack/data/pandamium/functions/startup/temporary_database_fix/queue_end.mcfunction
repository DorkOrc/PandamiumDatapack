bossbar set data_fixer_progress name {"text":"[dataFixer] queueing termination"}

$data modify storage pandamium:queue queue append value {action:"database/end_datafixer",wait:$(index)}

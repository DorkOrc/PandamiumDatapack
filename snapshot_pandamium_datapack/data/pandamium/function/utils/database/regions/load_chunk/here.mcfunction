function pandamium:utils/get/position
execute store result score <d> variable run function pandamium:utils/get/dimension_id

return run function pandamium:utils/database/regions/load_chunk/from_xzd_scores

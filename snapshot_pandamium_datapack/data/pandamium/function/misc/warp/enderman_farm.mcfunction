# only run IF score <enderman_farm_x> global = <enderman_farm_x> global

data modify storage pandamium:templates teleport.source set value "warp enderman_farm"
function pandamium:utils/teleport/to_object_centred with storage pandamium:global enderman_farm_warp

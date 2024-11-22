# Custom Entity Stack Structure/Rules:
## All Entities
All entities in the stack must have a tag with the structure `pandamium.custom_entity.type.*` where `*` is the custom entity type.

## The Brain Entity
All custom entities will, from now on, be tracked by a `marker` entity with the tag `pandamium.custom_entity.brain`, **and** it must have the tag `pandamium.ticking`.

The brain should have a field called `custom_entity_type` in its `data` compound. This should be a string that corresponds with the name of the sub-folder that contains the `tick` function for this custom entity.

The `tick` function will be at `pandamium:impl/custom_entities/custom_entity_types/$(custom_entity_type)/tick` and will run as the **root** entity, not the brain entity.

## The Root Entity
The "root" entity should be the brain's (marker's) vehicle and have the tag `pandamium.custom_entity.root`. The root entity must be an unkillable non-mob entity such as a display entity or an interaction entity, but must not be a marker.

Any other technical entities in the stack must be passengers (or higher) of the root entity, unless this extra entity is simply an entirely separate entity that is intended to be riding the custom entity and dismounts once it has died. 
In the latter case, the extra entity may or may not ride the controller entity.

Use `/function pandamium:utils/kill_entity_stack_discretely` when despawning the entity stack.

## The Controller (optional)
If the custom entity uses a controller mob for its AI (or some other purpose), that should be the vehicle of the root entity and have the tag `pandamium.custom_entity.controller`.
It is expected that once the controlled dies the rest of the stack will be killed immediately.

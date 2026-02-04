$summon $(entity)
$execute unless score #2 jkpof.int matches $(type) on origin run function jkpof:state/1/special_item/spawn_egg/variant/$(entity)
$execute if score #2 jkpof.int matches $(type) on origin run function jkpof:state/1/special_item/spawn_egg/variant/3 {entity: $(entity)}

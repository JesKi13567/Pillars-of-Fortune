$execute if score #event_iron_torrent jkpof.int matches 1..3 run setblock $(x) 120 $(z) $(block)
$execute if score #event_iron_torrent jkpof.int matches 4..16 run summon falling_block $(x) 120 $(z) {BlockState: {Name: "$(block)"}}
$execute if score #event_iron_torrent jkpof.int matches 17 run summon iron_golem $(x) 120 $(z) {Tags: ["jkpof", "jkpof_iron_torrent"]}
$execute if score #event_iron_torrent jkpof.int matches 18 run summon sulfur_cube $(x) 120 $(z) {Tags: ["jkpof", "jkpof_iron_torrent"], equipment: {body: {id: "iron_block"}}, Size: 1}

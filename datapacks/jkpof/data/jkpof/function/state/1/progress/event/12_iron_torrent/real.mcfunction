$execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 1..3 run setblock $(x) 120 $(z) $(block)
$execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 4..16 run summon falling_block $(x) 120 $(z) {DropItem: false, BlockState: {Name: "$(block)"}}
$execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 17 run summon iron_golem $(x) 120 $(z) {Tags: ["jkpof", "jkpof_iron_torrent"]}
$execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 18 run summon sulfur_cube $(x) 120 $(z) {Tags: ["jkpof", "jkpof_iron_torrent"], equipment: {body: {id: "iron_block"}}, Size: 1}

$execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 1 run summon falling_block $(x) 120 $(z) {DropItem: false, BlockState: {Name: "$(block)"}}
$execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 2..15 run summon falling_block $(x) 120 $(z) {DropItem: false, BlockState: {Name: "$(waxed)$(oxidized)$(block)"}}
$execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 16 run summon copper_golem $(x) 120 $(z) {Tags: ["jkpof", "jkpof_iron_torrent"]}
$execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 17 run summon sulfur_cube $(x) 120 $(z) {Tags: ["jkpof", "jkpof_iron_torrent"], equipment: {body: {id: "copper_block"}}, Size: 1}

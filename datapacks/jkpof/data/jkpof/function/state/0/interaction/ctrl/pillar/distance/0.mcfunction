$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 run summon marker -$(n1) 30 0 {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_W"], data: {name: "W"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 run summon marker $(n1) 30 0 {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_E"], data: {name: "E"}}
$summon marker 0 30 -$(n1) {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_N"], data: {name: "N"}}
$summon marker 0 30 $(n1) {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_S"], data: {name: "S"}}

$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker $(n2) 30 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_SE"], data: {name: "SE"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker $(n2) 30 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_NE"], data: {name: "NE"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker -$(n2) 30 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_SW"], data: {name: "SW"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker -$(n2) 30 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "jkpof_player_spawn_NW"], data: {name: "NW"}}

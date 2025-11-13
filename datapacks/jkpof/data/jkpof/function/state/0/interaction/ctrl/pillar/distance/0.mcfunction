$summon marker -$(n1) 30 0 {Tags: ["jkpof", "jkpof_player_spawn", "W"], data: {name: "W"}}
$summon marker $(n1) 30 0 {Tags: ["jkpof", "jkpof_player_spawn", "E"], data: {name: "E"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 run summon marker 0 30 -$(n1) {Tags: ["jkpof", "jkpof_player_spawn", "N"], data: {name: "N"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..3 run summon marker 0 30 $(n1) {Tags: ["jkpof", "jkpof_player_spawn", "S"], data: {name: "S"}}

$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker $(n2) 30 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "SE"], data: {name: "SE"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker $(n2) 30 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "NE"], data: {name: "NE"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker -$(n2) 30 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "SW"], data: {name: "SW"}}
$execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run summon marker -$(n2) 30 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "NW"], data: {name: "NW"}}

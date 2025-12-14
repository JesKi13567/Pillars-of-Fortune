execute store result score #style_temp jkpof.int run random value 0..1

execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run scoreboard players set #style_temp jkpof.int 0

$execute if score #style_temp jkpof.int matches 0 run summon marker -$(n1) 40 0 {Tags: ["jkpof", "jkpof_player_spawn", "W"], data: {name: "W"}}
$execute if score #style_temp jkpof.int matches 0 run summon marker $(n1) 40 0 {Tags: ["jkpof", "jkpof_player_spawn", "E"], data: {name: "E"}}
$execute if score #style_temp jkpof.int matches 0 run summon marker 0 40 -$(n1) {Tags: ["jkpof", "jkpof_player_spawn", "N"], data: {name: "N"}}
$execute if score #style_temp jkpof.int matches 0 run summon marker 0 40 $(n1) {Tags: ["jkpof", "jkpof_player_spawn", "S"], data: {name: "S"}}

execute if score #ctrl_pillar_count_order_real jkpof.int matches 0..1 run scoreboard players set #style_temp jkpof.int 1

$execute if score #style_temp jkpof.int matches 1 run summon marker $(n2) 40 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "SE"], data: {name: "SE"}}
$execute if score #style_temp jkpof.int matches 1 run summon marker $(n2) 40 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "NE"], data: {name: "NE"}}
$execute if score #style_temp jkpof.int matches 1 run summon marker -$(n2) 40 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "SW"], data: {name: "SW"}}
$execute if score #style_temp jkpof.int matches 1 run summon marker -$(n2) 40 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "NW"], data: {name: "NW"}}

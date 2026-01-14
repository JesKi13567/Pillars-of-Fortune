execute store result score #style_temp jkpof.int run random value 0..1

execute if score #ctrl_pillar_count_order_real jkpof.int matches 3..4 run scoreboard players set #style_temp jkpof.int 0

$execute if score #style_temp jkpof.int matches 0 run summon marker -$(n1) 40 0 {Tags: ["jkpof", "jkpof_player_spawn", "W"]}
$execute if score #style_temp jkpof.int matches 0 run summon marker $(n1) 40 0 {Tags: ["jkpof", "jkpof_player_spawn", "E"]}
$execute if score #style_temp jkpof.int matches 0 run summon marker 0 40 -$(n1) {Tags: ["jkpof", "jkpof_player_spawn", "N"]}
$execute if score #style_temp jkpof.int matches 0 run summon marker 0 40 $(n1) {Tags: ["jkpof", "jkpof_player_spawn", "S"]}

execute if score #ctrl_pillar_count_order_real jkpof.int matches 3..4 run scoreboard players set #style_temp jkpof.int 1

$execute if score #style_temp jkpof.int matches 1 run summon marker $(n2) 40 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "SE"]}
$execute if score #style_temp jkpof.int matches 1 run summon marker $(n2) 40 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "NE"]}
$execute if score #style_temp jkpof.int matches 1 run summon marker -$(n2) 40 $(n2) {Tags: ["jkpof", "jkpof_player_spawn", "SW"]}
$execute if score #style_temp jkpof.int matches 1 run summon marker -$(n2) 40 -$(n2) {Tags: ["jkpof", "jkpof_player_spawn", "NW"]}

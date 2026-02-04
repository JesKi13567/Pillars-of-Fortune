# 柱子
$execute if score #ctrl_upside_down jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-2 ~ ~ 1 ~ $(block2) strict
$execute if score #ctrl_upside_down jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~3 ~ ~ 49 ~ $(block2) strict

# 地面
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '0'}
$execute if score #ctrl_upside_down jkpof.int matches 0 run fill -24 0 -24 24 0 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-1'}
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 2.. run fill -24 -1 -24 24 -1 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-2'}
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 3.. run fill -24 -2 -24 24 -2 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-3'}
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 4.. run fill -24 -3 -24 24 -3 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-4'}
$execute if score #ctrl_upside_down jkpof.int matches 0 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 5.. run fill -24 -4 -24 24 -4 24 $(block1) replace bedrock strict

$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '50'}
$execute if score #ctrl_upside_down jkpof.int matches 1 run fill -24 50 -24 24 50 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '51'}
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 2.. run fill -24 51 -24 24 51 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '52'}
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 3.. run fill -24 52 -24 24 52 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '53'}
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 4.. run fill -24 53 -24 24 53 24 $(block1) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '54'}
$execute if score #ctrl_upside_down jkpof.int matches 1 unless score #ctrl_map_real jkpof.int matches 8 if score #ctrl_ground_floor jkpof.int matches 5.. run fill -24 54 -24 24 54 24 $(block1) replace bedrock strict

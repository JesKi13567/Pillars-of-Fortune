# 柱子
execute if score #ctrl_upside_down jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-2 ~ ~ 1 ~ smooth_sandstone strict
execute if score #ctrl_upside_down jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~3 ~ ~ 49 ~ smooth_sandstone strict

# 地面
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: 'oak_pressure_plate', block2: 'birch_pressure_plate', y: '0'}
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: 'sand', block2: 'red_sand', y: '-1'}
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-2'}
execute if score #ctrl_upside_down jkpof.int matches 0 run fill -24 -2 -24 24 -2 24 tnt replace bedrock strict

$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: 'oak_pressure_plate', block2: 'birch_pressure_plate', y: '52'}
$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: 'sand', block2: 'red_sand', y: '51'}
$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '50'}
execute if score #ctrl_upside_down jkpof.int matches 1 run fill -24 50 -24 24 50 24 tnt replace bedrock strict

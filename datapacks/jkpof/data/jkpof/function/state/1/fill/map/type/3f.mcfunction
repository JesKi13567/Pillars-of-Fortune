# 柱子
$execute if score #ctrl_upside_down jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-2 ~ ~ 1 ~ $(b1) strict
$execute if score #ctrl_upside_down jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~3 ~ ~ 49 ~ $(b1) strict

# 地面（从下往上可防止最上方不稳定方块被破坏）
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-2'}
$execute if score #ctrl_upside_down jkpof.int matches 0 run fill -24 -2 -24 24 -2 24 $(b4) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-1'}
$execute if score #ctrl_upside_down jkpof.int matches 0 run fill -24 -1 -24 24 -1 24 $(b3) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '0'}
$execute if score #ctrl_upside_down jkpof.int matches 0 run fill -24 0 -24 24 0 24 $(b2) replace bedrock strict

$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '50'}
$execute if score #ctrl_upside_down jkpof.int matches 1 run fill -24 50 -24 24 50 24 $(b4) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '51'}
$execute if score #ctrl_upside_down jkpof.int matches 1 run fill -24 51 -24 24 51 24 $(b3) replace bedrock strict
$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '52'}
$execute if score #ctrl_upside_down jkpof.int matches 1 run fill -24 52 -24 24 52 24 $(b2) replace bedrock strict

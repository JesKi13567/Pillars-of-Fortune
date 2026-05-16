execute store result score #style_temp jkpof.int run random value 0..3

# 地面
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 0 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '0', type: 'wool'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 1 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '0', type: 'stained_glass'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 2 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '0', type: 'concrete'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 3 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '0', type: 'glazed_terracotta'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 0 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '50', type: 'wool'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 1 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '50', type: 'stained_glass'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 2 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '50', type: 'concrete'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 3 run function jkpof:state/1/fill/map/type/rainbow/ground_random {r: '$(r)', y: '50', type: 'glazed_terracotta'}

execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 2.. run clone -24 0 -24 24 0 24 -24 -1 -24
execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 3.. run clone -24 0 -24 24 0 24 -24 -2 -24
execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 4.. run clone -24 0 -24 24 0 24 -24 -3 -24
execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 5.. run clone -24 0 -24 24 0 24 -24 -4 -24
execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 2.. run clone -24 50 -24 24 50 24 -24 51 -24
execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 3.. run clone -24 50 -24 24 50 24 -24 52 -24
execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 4.. run clone -24 50 -24 24 50 24 -24 53 -24
execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 5.. run clone -24 50 -24 24 50 24 -24 54 -24

# 柱子
execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '-2', y2: '1', type: 'wool'}
execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '-2', y2: '1', type: 'stained_glass'}
execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 2 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '-2', y2: '1', type: 'concrete'}
execute if score #ctrl_upside_down jkpof.int matches 0 if score #style_temp jkpof.int matches 3 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '-2', y2: '1', type: 'glazed_terracotta'}
execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 0 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '3', y2: '49', type: 'wool'}
execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 1 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '3', y2: '49', type: 'stained_glass'}
execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 2 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '3', y2: '49', type: 'concrete'}
execute if score #ctrl_upside_down jkpof.int matches 1 if score #style_temp jkpof.int matches 3 as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/rainbow/pillar {y1: '3', y2: '49', type: 'glazed_terracotta'}

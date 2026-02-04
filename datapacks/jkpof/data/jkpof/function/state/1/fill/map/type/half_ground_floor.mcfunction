# 地面
$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '0'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-1'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-2'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-3'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '-4'}

$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '50'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '51'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '52'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '53'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/type/half_ground {r: '$(r)', block1: '$(block1)', block2: '$(block2)', y: '54'}

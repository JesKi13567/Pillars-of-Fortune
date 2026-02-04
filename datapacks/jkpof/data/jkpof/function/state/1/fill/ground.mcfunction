$execute if score #ctrl_upside_down jkpof.int matches 0 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '0'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-1'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-2'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-3'}
$execute if score #ctrl_upside_down jkpof.int matches 0 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-4'}

$execute if score #ctrl_upside_down jkpof.int matches 1 run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '50'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 2.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '51'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 3.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '52'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 4.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '53'}
$execute if score #ctrl_upside_down jkpof.int matches 1 if score #ctrl_ground_floor jkpof.int matches 5.. run function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '54'}

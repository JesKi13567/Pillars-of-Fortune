# 柱子
$execute as @e[type=marker, tag=jkpof_player_spawn] at @s run fill ~ ~-2 ~ ~ 1 ~ $(block0)

# 地面
$function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '0'}
$fill -24 0 -24 24 0 24 $(block1) replace bedrock strict
$function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-1'}
$fill -24 -1 -24 24 -1 24 $(block2) replace bedrock strict
$function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y: '-2'}
$fill -24 -2 -24 24 -2 24 $(block3) replace bedrock strict

# 柱子
$execute as @e[type=marker, tag=jkpof_player_spawn, scores={jkpof.int=0}] at @s run fill ~ ~-2 ~ ~ 1 ~ $(block1)
$execute as @e[type=marker, tag=jkpof_player_spawn, scores={jkpof.int=1}] at @s run fill ~ ~-2 ~ ~ 1 ~ $(block2)

# 地面
$function jkpof:state/1/fill/map/floor {integrity: '1.0', r: '$(r)', y0: '$(y1)', y1: '$(y2)'}
$fill -24 $(y0) -24 24 $(y0) 24 $(block1) replace bedrock strict
$function jkpof:state/1/fill/map/floor {integrity: '0.5', r: '$(r)', y0: '$(y1)', y1: '$(y2)'}
$fill -24 $(y0) -24 24 $(y0) 24 $(block2) replace bedrock strict

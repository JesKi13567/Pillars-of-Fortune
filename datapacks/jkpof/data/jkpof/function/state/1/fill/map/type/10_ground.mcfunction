# 地面
$function jkpof:state/1/fill/map/type/half_ground_floor {r: '$(r)', block1: '$(block1)', block2: '$(block2)'}

# 柱子
execute as @e[type=marker, tag=jkpof_player_spawn] at @s run function jkpof:state/1/fill/map/type/10_pillar

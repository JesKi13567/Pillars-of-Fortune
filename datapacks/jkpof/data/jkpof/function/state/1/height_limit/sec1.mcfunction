# 按屏障展示实体
execute as @e[type=item_display, tag=jkpof_barrier, limit=1, scores={jkpof.int=1..}] at @s run function jkpof:state/1/height_limit/barrier_tp
execute as @a[scores={jkpof.state=2}, gamemode=survival] if score @s jkpof.Y >= #height_max jkpof.int run function jkpof:state/1/height_limit/player_damage

# 大厅保护
execute positioned 0 64 -100 run kill @e[type=!#jkpof:safe, distance=..60]

# 此处代码参考：龙腾猫跃-《方块竞技场》-突变-连锁换位
tag @a[gamemode=survival] add jkpof_swap_player

# 每人召唤一个
execute as @a[tag=jkpof_swap_player] at @s run summon marker ~ ~ ~ {Tags: ["jkpof_swap_marker"]}
execute as @e[type=marker, tag=jkpof_swap_marker] at @s run tp @s @p[tag=jkpof_swap_player]
execute as @e[type=marker, tag=jkpof_swap_marker] at @s run scoreboard players operation @s jkpof.id = @p[tag=jkpof_swap_player] jkpof.id
execute if score #ctrl_team jkpof.int matches 1..2 as @e[type=marker, tag=jkpof_swap_marker] at @s run scoreboard players operation @s jkpof.team = @p[tag=jkpof_swap_player] jkpof.team

# 传送并清除
execute as @a[tag=jkpof_swap_player] at @s run function jkpof:state/1/progress/event/once/chain_swap/player

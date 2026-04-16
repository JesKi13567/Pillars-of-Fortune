# 代码来自同作者的《起床战争工具包》
# 新
execute as @s[tag=!jkpof] run function jkpof:state/1/special_item/tower/new

# 按层
execute as @s[scores={jkpof.int=7}] run function jkpof:state/1/special_item/tower/floor/0
execute as @s[scores={jkpof.int=5..6}] run function jkpof:state/1/special_item/tower/floor/1
execute as @s[scores={jkpof.int=3..4}] run function jkpof:state/1/special_item/tower/floor/3
execute as @s[scores={jkpof.int=2}] run function jkpof:state/1/special_item/tower/floor/5
execute as @s[scores={jkpof.int=1}] run function jkpof:state/1/special_item/tower/floor/6
execute as @s[scores={jkpof.int=0}] run function jkpof:state/1/special_item/tower/floor/7
tp @s[scores={jkpof.int=..7}] ~ ~1 ~
scoreboard players remove @s jkpof.int 1

playsound entity.chicken.egg block @a
execute as @e[type=marker, tag=jkpof_check_pos] at @s run function jkpof:state/1/special_item/check_pos

# 梯子
execute as @s[tag=jkpof_north] at @e[type=marker, tag=jkpof_tower_ladder, distance=..8] run setblock ~ ~ ~ ladder[facing=south]
execute as @s[tag=jkpof_south] at @e[type=marker, tag=jkpof_tower_ladder, distance=..8] run setblock ~ ~ ~ ladder[facing=north]
execute as @s[tag=jkpof_east] at @e[type=marker, tag=jkpof_tower_ladder, distance=..8] run setblock ~ ~ ~ ladder[facing=west]
execute as @s[tag=jkpof_west] at @e[type=marker, tag=jkpof_tower_ladder, distance=..8] run setblock ~ ~ ~ ladder[facing=east]

# 羊毛
execute as @s[scores={jkpof.team=1}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ red_wool
execute as @s[scores={jkpof.team=2}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ blue_wool
execute as @s[scores={jkpof.team=3}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ green_wool
execute as @s[scores={jkpof.team=4}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ yellow_wool
execute as @s[scores={jkpof.team=5}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ cyan_wool
execute as @s[scores={jkpof.team=6}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ white_wool
execute as @s[scores={jkpof.team=7}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ pink_wool
execute as @s[scores={jkpof.team=8}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ gray_wool
execute as @s[scores={jkpof.team=9}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ orange_wool
execute as @s[scores={jkpof.team=10}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ lime_wool
execute as @s[scores={jkpof.team=11}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ purple_wool
execute as @s[scores={jkpof.team=12}] at @e[type=marker, tag=jkpof_tower_wool, distance=..8] run setblock ~ ~ ~ light_gray_wool

# 清理
kill @e[type=marker, tag=jkpof_check_pos, distance=..8]
kill @s[scores={jkpof.int=..0}]

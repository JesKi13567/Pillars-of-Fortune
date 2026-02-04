# 消耗和冷却
clear @s ender_eye[custom_data={jkpof: ["ender_eye"]}] 1
scoreboard players set @s jkpof.cd 4

# 递归前进
scoreboard players set #ender_eye_temp jkpof.int 20
function jkpof:state/1/special_item/ender_eye/loop
effect give @s slow_falling 1 0 true

# 放个方块
execute at @s run summon marker ~ ~-1 ~ {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
execute as @e[type=marker, tag=jkpof_check_pos] at @s run function jkpof:state/1/special_item/check_pos
execute as @e[type=marker, tag=jkpof_slime] at @s run setblock ~ ~ ~ slime_block

# 清理
kill @e[type=marker, tag=jkpof_check_pos]

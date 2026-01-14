# 消耗和冷却
clear @s blaze_rod[custom_data={jkpof: ["platform"]}] 1
scoreboard players set @s jkpof.cd 20

# 生成
summon marker ~ ~-3 ~ {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-1 ~-3 ~ {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-2 ~-3 ~ {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-1 ~-3 ~-1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-1 ~-3 ~-2 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-1 ~-3 ~1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-1 ~-3 ~2 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-2 ~-3 ~-1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~-2 ~-3 ~1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~1 ~-3 ~ {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~2 ~-3 ~ {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~1 ~-3 ~-1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~1 ~-3 ~-2 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~1 ~-3 ~1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~1 ~-3 ~2 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~2 ~-3 ~-1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~2 ~-3 ~1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~ ~-3 ~-1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~ ~-3 ~-2 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~ ~-3 ~1 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~ ~-3 ~2 {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}
summon marker ~ ~-4 ~ {Tags: ["jkpof", "jkpof_slime", "jkpof_check_pos"]}

# 防摔
effect give @s slow_falling 1 0 true

# 检查位置
execute as @e[type=marker, tag=jkpof_check_pos] at @s run function jkpof:state/1/special_item/check_pos
execute as @e[type=marker, tag=jkpof_slime] at @s run setblock ~ ~ ~ slime_block

# 清理
kill @e[type=marker, tag=jkpof_slime]

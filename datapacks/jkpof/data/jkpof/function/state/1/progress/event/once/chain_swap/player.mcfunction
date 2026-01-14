tag @s add jkpof_self

# 1. 优先选择不同队
execute if score #ctrl_team jkpof.int matches 1..2 as @e[type=marker, tag=jkpof_swap_marker] unless score @s jkpof.team = @p[tag=jkpof_self] jkpof.team run tag @s add jkpof_swap_marker_sel
#       没有则选择任意
execute unless entity @e[type=marker, tag=jkpof_swap_marker_sel] run tag @e[type=marker, tag=jkpof_swap_marker] add jkpof_swap_marker_sel
# 2. 优先选择未完成传送者，防止闭环
execute as @a[tag=jkpof_swap_player] at @s run function jkpof:state/1/progress/event/once/chain_swap/player_sel
#       没有则选择任意
execute unless entity @e[type=marker, tag=jkpof_swap_marker_sel2] run tag @e[type=marker, tag=jkpof_swap_marker_sel] add jkpof_swap_marker_sel2
# 3. 随机选择一个符合条件的
tag @e[type=marker, tag=jkpof_swap_marker_sel2, sort=random, limit=1] add jkpof_swap_marker_sel3
# 4. 清理 Tag，至此只留下一个 jkpof_swap_marker_sel3
tag @e remove jkpof_swap_marker_sel
tag @e remove jkpof_swap_marker_sel2
tag @s remove jkpof_self

# 传送
tp @s @e[type=marker, tag=jkpof_swap_marker_sel3, limit=1]
# 显示提示
execute as @a if score @s jkpof.id = @e[type=marker, tag=jkpof_swap_marker_sel3, limit=1] jkpof.id run tag @s add jkpof_swap_target
tellraw @s ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.chain_swap.tellraw.p2", color: "aqua"}, " ", {selector: "@a[tag=jkpof_swap_target]"}, " ", {storage: "jk:pof", nbt: "txt.event.chain_swap.tellraw.p3", color: "aqua"}]
tag @a[tag=jkpof_swap_target] remove jkpof_swap_target

# 清理
tag @s remove jkpof_swap_player
kill @e[type=marker, tag=jkpof_swap_marker_sel3]

# 特效
playsound block.beacon.power_select block @a
playsound entity.enderman.teleport block @a
particle reverse_portal ~ ~1.3 ~ 0.4 0.4 0.4 0.15 100

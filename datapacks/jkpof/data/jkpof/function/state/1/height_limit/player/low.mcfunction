# 检查持有虚空护符
execute store success score @s jkpof.void_charm.hold run clear @s bedrock[custom_data={jkpof: ["void_charm"]}] 0
execute unless score @s[scores={jkpof.void_charm.hold=1}] jkpof.void_charm.last matches 1.. run function jkpof:state/1/special_item/void_charm/use
execute as @s[scores={jkpof.void_charm.last=1..}] run return 0

# 仁慈的虚空
execute if score #ctrl_forgiving_void jkpof.int matches 1 at @s run return run function jkpof:state/1/height_limit/player/forgiving_void

# 测试模式
execute if score #test_mode jkpof.int matches 1 unless score @s jkpof.void_charm.last matches 1.. run return run tp @s @e[type=item_display, tag=jkpof_height_barrier, tag=max, limit=1]

# 不是以上任何情况
damage @s 100 out_of_world

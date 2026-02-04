# 检查持有虚空护符
execute store success score @s jkpof.void_charm.hold run clear @s bedrock[custom_data={jkpof: ["void_charm"]}] 0
execute unless score @s[scores={jkpof.void_charm.hold=1}] jkpof.void_charm.last matches 1.. run function jkpof:state/1/special_item/void_charm/use

# 没有则死
execute unless score #test_mode jkpof.int matches 1 unless score @s jkpof.void_charm.last matches 1.. run damage @s 100 out_of_world

# 测试模式
execute if score #test_mode jkpof.int matches 1 unless score @s jkpof.void_charm.last matches 1.. run tp @s @e[type=item_display, tag=jkpof_height_barrier, tag=max, limit=1]

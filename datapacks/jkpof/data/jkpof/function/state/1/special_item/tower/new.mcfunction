# 初始
tp @s ~ ~-1 ~
scoreboard players set @s jkpof.int 8
execute if score #ctrl_team jkpof.int matches 0 run scoreboard players set @s jkpof.team 6
execute if score #ctrl_team jkpof.int matches 1..2 run scoreboard players operation @s jkpof.team = @p[scores={jkpof.spawn_egg.tadpole=1..}] jkpof.team

# 转向
execute if entity @p[scores={jkpof.spawn_egg.tadpole=1..}, y_rotation=135.01..180] run tag @s add jkpof_north
execute if entity @p[scores={jkpof.spawn_egg.tadpole=1..}, y_rotation=-180..-135] run tag @s add jkpof_north
execute if entity @p[scores={jkpof.spawn_egg.tadpole=1..}, y_rotation=-134.99..-45] run tag @s add jkpof_east
execute if entity @p[scores={jkpof.spawn_egg.tadpole=1..}, y_rotation=-44.99..45] run tag @s add jkpof_south
execute if entity @p[scores={jkpof.spawn_egg.tadpole=1..}, y_rotation=45.01..135] run tag @s add jkpof_west

rotate @s[tag=jkpof_north] 180 0
rotate @s[tag=jkpof_east] -90 0
rotate @s[tag=jkpof_south] 0 0
rotate @s[tag=jkpof_west] 90 0

# 清理
tag @s add jkpof
scoreboard players reset @a[scores={jkpof.spawn_egg.tadpole=1..}] jkpof.spawn_egg.tadpole

# 来自射箭的操作（new）
tag @s add jkpof_tower

execute store result score @s jkpof.team run random value 1..12
execute store result score @s jkpof.int run random value 1..4

tag @s[scores={jkpof.int=1}] add jkpof_north
tag @s[scores={jkpof.int=2}] add jkpof_east
tag @s[scores={jkpof.int=3}] add jkpof_south
tag @s[scores={jkpof.int=4}] add jkpof_west

rotate @s[tag=jkpof_north] 180 0
rotate @s[tag=jkpof_east] -90 0
rotate @s[tag=jkpof_south] 0 0
rotate @s[tag=jkpof_west] 90 0

scoreboard players set @s jkpof.int 8
tag @s add jkpof

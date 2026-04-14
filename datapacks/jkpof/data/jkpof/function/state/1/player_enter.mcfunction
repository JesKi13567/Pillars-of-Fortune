gamemode survival @s
spawnpoint @s 0 120 0
recipe give @s *
scoreboard players set @s jkpof.state 2
scoreboard players set @s jkpof.lives 1

# 玩家标号
execute store result score @s jkpof.id run scoreboard players add #id_temp jkpof.int 1

# 传送
function jkpof:state/1/before_start/tp_spawn

# 杂项/特殊规则
execute if score #ctrl_night_vision jkpof.int matches 1 run effect give @s night_vision infinite 0 true
execute if score #ctrl_kid_mode jkpof.int matches 1 run attribute @s scale base set 0.5
execute if score #ctrl_double_health jkpof.int matches 1 run attribute @s max_health base set 40
execute if score #ctrl_init_tool jkpof.int matches 1 run loot give @s loot jkpof:item/shears

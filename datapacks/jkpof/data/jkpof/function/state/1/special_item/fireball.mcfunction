# 消耗和冷却
clear @s fire_charge 1
scoreboard players set @s jkpof.cd.fireball 6

# 生成
summon fireball ^ ^ ^.3 {Tags: ["jkpof", "jkpof_fireball_new"]}
data modify entity @e[type=fireball, tag=jkpof_fireball_new, limit=1, sort=nearest] Owner set from entity @s UUID

data modify entity @e[tag=jkpof_fireball_new, limit=1] Rotation set from entity @s Rotation
summon marker ^ ^ ^.8 {Tags: ["jkpof", "jkpof_throw_mark"]}

execute store result score #x1 jkpof.int run data get entity @e[type=fireball, tag=jkpof_fireball_new, limit=1] Pos[0] 100
execute store result score #y1 jkpof.int run data get entity @e[type=fireball, tag=jkpof_fireball_new, limit=1] Pos[1] 100
execute store result score #z1 jkpof.int run data get entity @e[type=fireball, tag=jkpof_fireball_new, limit=1] Pos[2] 100
execute store result score #x2 jkpof.int run data get entity @e[type=marker, tag=jkpof_throw_mark, limit=1] Pos[0] 100
execute store result score #y2 jkpof.int run data get entity @e[type=marker, tag=jkpof_throw_mark, limit=1] Pos[1] 100
execute store result score #z2 jkpof.int run data get entity @e[type=marker, tag=jkpof_throw_mark, limit=1] Pos[2] 100

execute store result entity @e[type=fireball, tag=jkpof_fireball_new, limit=1] Motion[0] double 0.005 run scoreboard players operation #x2 jkpof.int -= #x1 jkpof.int
execute store result entity @e[type=fireball, tag=jkpof_fireball_new, limit=1] Motion[1] double 0.005 run scoreboard players operation #y2 jkpof.int -= #y1 jkpof.int
execute store result entity @e[type=fireball, tag=jkpof_fireball_new, limit=1] Motion[2] double 0.005 run scoreboard players operation #z2 jkpof.int -= #z1 jkpof.int

tag @e[type=fireball, tag=jkpof_fireball_new] remove jkpof_fireball_new
kill @e[type=marker, tag=jkpof_throw_mark]

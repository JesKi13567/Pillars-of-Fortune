# 消耗和冷却
clear @s fire_charge[custom_data={jkpof: ["fireball"]}] 1
scoreboard players set @s jkpof.cd.fireball 1

# 生成
summon fireball ^ ^ ^.3 {Tags: ["jkpof", "jkpof_fireball_new"]}
function jkpof:state/1/special_item/fireball_throw
